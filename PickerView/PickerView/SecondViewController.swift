//
//  SecondViewController.swift
//  PickerView
//
//  Created by Gamze Akyüz on 11.01.2024.
//

import UIKit

class SecondViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    
    @IBOutlet weak var textField: UITextField!
    
    var pickerView: UIPickerView?
    
    var countries: [String] = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        pickerView = UIPickerView()
        pickerView?.delegate = self
        pickerView?.dataSource = self
        
        textField.inputView = pickerView
        
        countries = ["France","Germany","İtaly","Thailand","ABD","Turkey"]
        
        let toolbar = UIToolbar()
        toolbar.tintColor = UIColor.red
        toolbar.sizeToFit()
        
        let okButton = UIBarButtonItem(title: "Ok", style: .plain, target: self, action: #selector(SecondViewController.okClick))
        
        let spaceButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        
        let cancelButton = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(SecondViewController.cancelClick))
        
        toolbar.setItems([cancelButton,spaceButton,okButton], animated: true)
        
        textField.inputAccessoryView = toolbar
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
        textField.text = countries[row]
    }
    @objc func okClick(){
        textField.text = ""
        textField.placeholder = "Selected Country"
        view.endEditing(true)
    }
    @objc func cancelClick(){
        view.endEditing(true)
    }
    
    

}
