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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.tableView.reloadData()
    }
    
}

extension AddressesViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Base.shared.addresses.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell: UITableViewCell!
        
        if let dCell = tableView.dequeueReusableCell(withIdentifier: "dCell") {
            cell = dCell
        } else {
            cell = UITableViewCell()
        }
        cell.textLabel!.text = Base.shared.addresses[indexPath.row].name
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}

