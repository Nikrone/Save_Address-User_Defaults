//
//  ViewController.swift
//  Save_Address(User_Defaults)
//
//  Created by Evgeniy Nosko on 9.09.21.
//

import UIKit

struct KeysDefaults {
    static let keyCity = "city"
    static let keyStreet = "street"
    static let keyHouse = "house"
    static let keyBuild = "build"
    static let keyFlat = "flat"
}

class ViewController: UIViewController {
    
    @IBOutlet weak var cityField: UITextField!
    @IBOutlet weak var streetField: UITextField!
    @IBOutlet weak var houseField: UITextField!
    @IBOutlet weak var buildField: UITextField!
    @IBOutlet weak var flatField: UITextField!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        cityField.text = defaults.string(forKey: KeysDefaults.keyCity)
//        streetField.text = defaults.string(forKey: KeysDefaults.keyStreet)
//        houseField.text = defaults.string(forKey: KeysDefaults.keyHouse)
//        buildField.text = defaults.string(forKey: KeysDefaults.keyBuild)
//        flatField.text = defaults.string(forKey: KeysDefaults.keyFlat )

    }
    
    @IBAction func buttonPressedSave(_ sender: Any) {
        let city = cityField.text!
        let street = streetField.text!
        let house = houseField.text!
        let build = buildField.text!
        let flat = flatField.text!
        
        if !city.isEmpty && !street.isEmpty && !house.isEmpty && !flat.isEmpty {
            
            Base.shared.saveAdress(city: city, street: street, house: house, build: build, flat: flat)
            self.navigationController?.popViewController(animated: true)
            
//            defaults.setValue(city, forKey: KeysDefaults.keyCity)
//            defaults.setValue(street, forKey: KeysDefaults.keyStreet)
//            defaults.setValue(house, forKey: KeysDefaults.keyHouse)
//            defaults.setValue(build, forKey: KeysDefaults.keyBuild)
//            defaults.setValue(flat, forKey: KeysDefaults.keyFlat)
            
        }

        
    }


}

