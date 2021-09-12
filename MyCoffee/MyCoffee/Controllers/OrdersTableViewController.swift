//
//  OrdersTableViewController.swift
//  MyCoffee
//
//  Created by Ravi Navarro  on 09/09/21.
//

import Foundation
import UIKit


class OrdersTableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        populateOrders()
    }
    
    
    
    
    private func populateOrders() {
        
        
      guard  let coffeeOrdersURL = URL(string: "") else {
            fatalError("URL was incorrect")
        }
        
        let resource = Resource<[Order]>(url: coffeeOrdersURL)
        
        Webservice().load(resource: resource) { result in
            
            switch result {
            
            case .success(let orders):
                print(orders)
            case .failure(let error):
                print(error)
            }
        }
        
    }
    
   
}
