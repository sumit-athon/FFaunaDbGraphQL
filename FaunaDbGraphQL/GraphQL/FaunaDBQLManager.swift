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
    
    open func fetchAllOrdersByUserId(userId: String, success: @escaping([FindAllOrderQuery.Data.FindAllOrderByUserId?]?) -> Void, failure: @escaping(Error) -> Void) {

        self.apollo.fetch(query: FindAllOrderQuery(userId: userId), cachePolicy: .fetchIgnoringCacheData) { (result) in
            switch result {
            case .success(let graphResult):
                let orders = graphResult.data?.findAllOrderByUserId
                success(orders)
            case .failure(let error):
                failure(error)
                print(error.localizedDescription)
            }
        }
    }
        
    func fetchUser(id: String, success: @escaping(FetchUserByFaunaIdQuery.Data.FindUserById?) -> Void, failure: @escaping(Error) -> Void) {
        self.apollo.fetch(query: FetchUserByFaunaIdQuery(id: id), cachePolicy: .fetchIgnoringCacheData) { (result) in
            switch result {
            case .success(let graphResult):
                let user = graphResult.data?.findUserById
                success(user)
            case .failure(let error):
                failure(error)
                print(error.localizedDescription)
            }
        }
    }
    
    func updateUser(id: String, data: [String: Any]) {
//        self.apollo.perform(mutation: UpdateUserMutation(id: id, data: data))
    }
    
}

