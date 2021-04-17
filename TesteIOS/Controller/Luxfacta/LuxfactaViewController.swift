//
//  LuxfactaViewController.swift
//  TesteIOS
//
//  Created by Fernando Totta on 17/04/21.
//

import UIKit

class LuxfactaViewController: UIViewController {

    @IBOutlet weak var numberTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTextField.delegate = self
    }

    @IBAction func verifyNumberTapped(_ sender: UIButton) {
        let luxfactaModel = Luxfacta(n: Int(numberTextField.text ?? "")!)
        resultLabel.text = luxfactaModel.say()
        resultLabel.isHidden = false
    }

}

extension LuxfactaViewController: UITextFieldDelegate {
    
    func hideKeyboard() {
        numberTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }

}
