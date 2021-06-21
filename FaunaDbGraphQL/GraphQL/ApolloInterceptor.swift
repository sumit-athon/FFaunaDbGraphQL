//
//  ApolloInterpreter.swift
//  FaunaDbGraphQL
//
//  Created by Surjeet on 17/06/21.
//

import UIKit
import Apollo

class TokenAddingInterceptor: ApolloInterceptor {
    
    var authKey: String?
    init(key: String?) { self.authKey = key  }
    
    func interceptAsync<Operation: GraphQLOperation>(
        chain: RequestChain,
        request: HTTPRequest<Operation>,
        response: HTTPResponse<Operation>?,
        completion: @escaping (Result<GraphQLResult<Operation.Data>, Error>) -> Void) {
        if let key = authKey {
            request.addHeader(name: "Authorization", value: "Bearer \(key)")
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
