//
//  ViewController.swift
//  PickerView
//
//  Created by Gamze Akyüz on 11.01.2024.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var picker: UIPickerView!
    
    var countries: [String] = [String]()
    var selectedCountry: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        picker.delegate = self
        picker.dataSource = self
        
        countries = ["France","Germany","İtaly","Thailand","ABD","Turkey"]
        
        
    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return countries.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return countries[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        labelText.text = countries[row]
        selectedCountry = countries[row]
    }


}

