//
//  ViewController.swift
//  Indra
//
//  Created by Derlys H. on 1/25/21.
//  Copyright © 2021 derlys. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.emailTextField.becomeFirstResponder()
    }
    
    // MARK: - Validation
    
    func validateTextFields() -> Bool{
        if (self.emailTextField.text == "Admin") {
            if (self.passwordTextField.text == "Password*123") {
                return false;
            }
        }
        return true;
    }
    
    // MARK: - Action
    
    @IBAction func loginAction(_ sender: UIButton) {
        
        if validateTextFields(){
            let alerController = UIAlertController(title: "Applicación", message: "Por favor revisar el usuario y contraseña", preferredStyle: .alert)
            alerController.addAction(UIAlertAction(title: "Aceptar", style: .default, handler: { (action) in
                self.emailTextField.becomeFirstResponder()
            }))
            self.present(alerController, animated: true, completion: nil)
        }
    }
    
}

