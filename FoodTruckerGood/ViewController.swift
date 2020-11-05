//
//  ViewController.swift
//  FoodTruckerGood
//
//  Created by Lukasz Stachnik on 04/11/2020.
//  Copyright © 2020 Warss. All rights reserved.
//

import UIKit



class ViewController: UIViewController,UITextFieldDelegate {
    
    //MARK: Properties
    
    @IBOutlet weak var mealNameLabel: UILabel!
    
    // This line tells Xcode that you can connect nameTextField property from Interface Builder(IB), weak is showing system that property can be unallocated,
    @IBOutlet weak var nameTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Handles the text field's user input through delegate callbacks
        nameTextField.delegate = self
    }
    
    //MARK: UITextFieldDelegate
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        // Hide the keyboard.
        textField.resignFirstResponder()
        
        return true
       }
       
    func textFieldDidEndEditing(_ textField: UITextField) {
        mealNameLabel.text = textField.text
       }
    
    
    //MARK: Actions
    
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        mealNameLabel.text = "Default value"
    }
    
   
    
}

