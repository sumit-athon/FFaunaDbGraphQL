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
            fatalError("Missing Server end point! Provide 'graphQLendPoint' value \n 'graphQLAuthKey' If Authorization required")
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
    
    open func fetchAllOrdersByUserId(userId: String, success: @escaping([FindAllOrderQuery.Data.FindOrdersByUserId?]?) -> Void, failure: @escaping(Error) -> Void) {

        self.apollo.fetch(query: FindAllOrderQuery(userId: userId), cachePolicy: .fetchIgnoringCacheData) { (result) in
            switch result {
            case .success(let graphResult):
                let orders = graphResult.data?.findOrdersByUserId
                success(orders)
            case .failure(let error):
                failure(error)
                print(error.localizedDescription)
            }
        }
    }
        
    open func fetchUser(id: String, success: @escaping(FetchUserByFaunaIdQuery.Data.FindUserById?) -> Void, failure: @escaping(Error) -> Void) {
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
}

// Update username functions
extension FaunaDBQLManager {
    
    open func checkUsernameAlreadyExist(username: String, success: @escaping(Bool) -> Void, failure: @escaping(Error) -> Void) {
        self.apollo.fetch(query: CheckUsernameExistQuery(username: username)) {(result) in
            switch result {
            case .success(let graphResult):
                if let _ = graphResult.data?.findUserByUsername {
                    success(true)
                } else {
                    success(false)
                }
            case .failure(let error):
                failure(error)
            }
        }
    }
    
    open func updateUser(id: String, username: String, success: @escaping(UpdateUserMutation.Data.UpdateUser?) -> Void, failure: @escaping(Error) -> Void) {
        
        var userInput = UserInput()
        userInput.username = username
        self.apollo.perform(mutation: UpdateUserMutation(id: id, data: userInput), publishResultToStore: true) { (result) in
            switch result {
            case .success(let graphResult):
                let user = graphResult.data?.updateUser
                success(user)
            case .failure(let error):
                failure(error)
                print(error.localizedDescription)
            }
        }
    }
}

