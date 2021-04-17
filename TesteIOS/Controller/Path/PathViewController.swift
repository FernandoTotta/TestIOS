//
//  PathViewController.swift
//  TesteIOS
//
//  Created by Fernando Totta on 17/04/21.
//

import UIKit

class PathViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var pathTextField: UITextField!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pathTextField.delegate = self
        self.view.backgroundColor = .brown
    }
    
    @IBAction func VerifyPath(_ sender: UIButton) {
        guard let pathTextField = pathTextField.text else { return }
        let path = Path(currentPath: "a/b/c/d")
        resultLabel.text = path.cd(path: pathTextField)
        resultLabel.isHidden = false
    }
    
}

extension PathViewController: UITextFieldDelegate {
    
    func hideKeyboard() {
        pathTextField.resignFirstResponder()
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        hideKeyboard()
        return true
    }

}

