//
//  PalidromeViewController.swift
//  TesteIOS
//
//  Created by Fernando Totta on 17/04/21.
//

import UIKit

class PalidromeViewController: UIViewController {

    @IBOutlet weak var palidromoTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        palidromoTextField.delegate = self
        // Do any additional setup after loading the view.
    }
    

    @IBAction func verifyPalindrome(_ sender: UIButton) {
        guard let palindromo = palidromoTextField.text else { return }
        let palindrome = Palindrome.isPalindrome(word: palindromo)
        
        if palindrome{
            var text = ""
            text = "\(palindromo) é um palindromo"
            resultLabel.isHidden = false
            resultLabel.text = text
        }else {
            resultLabel.isHidden = false
            resultLabel.text = "Não é palindromo"
        }
    }
    
}
extension PalidromeViewController: UITextFieldDelegate {
    
    func hideKeyboard() {
        palidromoTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }

}
