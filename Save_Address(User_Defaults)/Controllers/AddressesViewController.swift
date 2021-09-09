//
//  AdressesViewController.swift
//  Save_Address(User_Defaults)
//
//  Created by Evgeniy Nosko on 9.09.21.
//

import Foundation
import UIKit

class AddressesViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView?.delegate = self
            tableView?.dataSource = self
        }
    }
    
    
    extension AddressesViewController: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return Int
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: <#T##String#>) as!
        }
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return CGFloat
        }
    }
    
}
