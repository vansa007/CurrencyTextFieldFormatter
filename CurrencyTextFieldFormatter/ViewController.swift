//
//  ViewController.swift
//  CurrencyTextFieldFormatter
//
//  Created by Vansa Pha on 12/6/17.
//  Copyright © 2017 Vansa Pha. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //visual outlet
    @IBOutlet weak var myCurrencyTextField: CurrencyTextfieldForrmatter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set mytextfield delegate
        self.myCurrencyTextField.delegate = self
        
        /*config mytextfield, if you don't want to config on storyboard
         
        self.myCurrencyTextField.isFractionExist = true //if you want your textfield has fraction (.)
        self.myCurrencyTextField.maxDigits = 15 //set maximum of number of digits (default 15)
         
        */
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if textField == self.myCurrencyTextField && string == "." {
            let countdots = textField.text?.components(separatedBy: ".")
            if (countdots?.count)! >= 2 {
                return false
            }
        }
        return true
    }
    
}

