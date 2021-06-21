//
//  ViewController.swift
//  FaunaDbGraphQL
//
//  Created by Surjeet on 01/06/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        FaunaDBQLManager.shared.graphQLendPoint = ""
        FaunaDBQLManager.shared.graphQLAuthKey = ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
        updateUser()
    }
    
    private func updateUser() {
        FaunaDBQLManager.shared.updateUser(id: "301016749594116613", username: "sumittest") { (updatedUser) in
            print("User Updated \(updatedUser?._id)")
        } failure: { (error) in
            print(error.localizedDescription)
        }
    }
    
    private func fetchAllOrders() {
        FaunaDBQLManager.shared.fetchAllOrdersByUserId(userId: "") { (orders) in
            print("Orders Count: \(orders?.count)")
            let images = orders?.map({$0?.clOrderImageUrl})
            print(images)
        } failure: { (error) in
            print("Error kmkm")
        }
    }
    
}
