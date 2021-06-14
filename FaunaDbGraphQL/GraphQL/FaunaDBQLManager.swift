//
//  ApolloQLManager.swift
//  ApolloQLManager
//
//  Created by Sumit on 08/05/21.
//

import Foundation
import Apollo

open class FaunaDBQLManager {
    public static let shared = FaunaDBQLManager()
    public var graphQLendPoint: String!
    public var graphQLAuthKey: String?
    
    private init (){}

    private(set) lazy var apollo: ApolloClient = {
        
        let url = URL(string: graphQLendPoint)
        if url == nil {
            fatalError("Missing Server end point! Provide 'graphQLendPoint' value ")
        }
        let client = URLSessionClient()
        let cache = InMemoryNormalizedCache()
        let store = ApolloStore(cache: cache)
        let provider = NetworkInterceptorProvider(client: client, store: store, authKey: graphQLAuthKey)
        let transport = RequestChainNetworkTransport(interceptorProvider: provider,
                                                     endpointURL: url!)
        return ApolloClient(networkTransport: transport, store: store)
    }()

    // Fetch Events filtered by slug
    
    func fetchAllOrdersByEmail(email: String, success: @escaping([FetchAllOrderByEmailQuery.Data.FindAllOrderByEmail?]?) -> Void, failure: @escaping(Error) -> Void) {
        self.apollo.fetch(query: FetchAllOrderByEmailQuery(email: email)) { (result) in
            switch result {
            case .success(let graphResult):
                let orders = graphResult.data?.findAllOrderByEmail
                success(orders)
            case .failure(let error):
                failure(error)
                print(error.localizedDescription)
            }
        }
    }
}

class TokenAddingInterceptor: ApolloInterceptor {
    
    var authKey: String?
    init(key: String?) { self.authKey = key  }
    
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
        if let key = authKey {
            request.addHeader(name: "Authorization", value: "Basic \(key)")
        }
        chain.proceedAsync(request: request, response: response, completion: completion)
    }
}

class NetworkInterceptorProvider: LegacyInterceptorProvider {
    
    var authKey: String?
    
    init(client: URLSessionClient = URLSessionClient(),
                shouldInvalidateClientOnDeinit: Bool = true,
                store: ApolloStore, authKey: String?) {
        super.init(client: client, store: store)
        self.authKey = authKey
    }
    
    override func interceptors<Operation: GraphQLOperation>(for operation: Operation) -> [ApolloInterceptor] {
        var interceptors = super.interceptors(for: operation)
        interceptors.insert(TokenAddingInterceptor(key: authKey), at: 0)
        return interceptors
    }
}
