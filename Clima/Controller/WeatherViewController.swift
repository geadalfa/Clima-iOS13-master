//
//  ViewController.swift
//  Clima
//
//  Created by Angela Yu on 01/09/2019.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var conditionImageView: UIImageView!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate = self
    }

    @IBAction func searchPressed(_ sender: UIButton) { //function for button return keyboard
        searchTextField.endEditing(true)
        print(searchTextField.text ?? "Search City")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {  //function for return value/word in keyboard
        searchTextField.endEditing(true)
        print(searchTextField.text ?? "Search City")
        return true
    }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool { //function for return empty or changing placeholder
        if textField.text != "" {
            return true
        } else {
            textField.placeholder = "Type something"
            return false
        }
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        //Use searchTextField.text to get the weather for that city
        
        searchTextField.text = ""
    }
}

