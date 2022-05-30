//
//  OrdersTableVC.swift
//  Coffee2Go
//
//  Created by Sean Murphy on 5/30/22.
//

import Foundation
import UIKit

class OrdersTableVC: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        populateOrders()
    }
    
    private func populateOrders() {
        guard let coffeeOrdersURL = URL(string: "https://warp-wiry-rugby.glitch.me/orders") else {
            fatalError("URL was incorrect")
        }
        
        let resourse = Resource<[Order]>(url: coffeeOrdersURL)
        
        WebService().load(resource: resourse) { result in
            switch result {
            case .success(let orders):
                print(orders)
            case .failure(let error):
                print(error)
            }
        }
    }
}
