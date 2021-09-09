//
//  Base.swift
//  Save_Address(User_Defaults)
//
//  Created by Evgeniy Nosko on 9.09.21.
//

import Foundation
import UIKit

class Base {
    let defaults = UserDefaults.standard
    static let shared = Base()
    struct UserAddress: Codable {
        var city: String
        var street: String
        var house: String
        var build: String?
        var flat: String
        var name: String {
            return "\(city), \(street), \(house), \(build ?? ""),\(flat)"
        }
    }
    
    var addresses: [UserAddress] {
        
        get {
            if let  data = defaults.value(forKey: "adresses") as? Data {
                return try! PropertyListDecoder().decode([UserAddress].self, from: data)
            } else {
                return [UserAddress]()
            }
        }
        set {
            
            if let data = try? PropertyListEncoder().encode(newValue) {
                defaults.setValue(data, forKey: "addresses")
            }
        }
    }
    
    func saveAdress(city: String, street:String, house: String, build: String?, flat: String) {
        
        let address = UserAddress(city: city, street: street, house: house, build: build, flat: flat)
        addresses.insert(address, at: 0)
    }
    
}
