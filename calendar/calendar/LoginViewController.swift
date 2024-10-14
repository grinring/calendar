//
//  LoginViewController.swift
//  calendar
//
//  Created by Rintaro Tsuji on 2024/10/08.
//

import UIKit

class LoginViewController: UIViewController {
    
    private(set) lazy var loginView = LoginView()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.addSubview(loginView)
        loginView.emailTextField.delegate = self
        loginView.passwordTextField.delegate = self
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        loginView.frame = view.bounds.inset(by: view.safeAreaInsets)
    }
    
    @objc static func loginButtonPressed(){
        
    }
    
    @objc static func eyeButtonPressed(){
        
    }


}

extension LoginViewController:UITextFieldDelegate{
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if (textField.text?.isEmpty == true || textField.text?.trimmingCharacters(in: .whitespaces).isEmpty == true) {
            return false
        }
        return true
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField.text?.isEmpty == true || textField.text?.trimmingCharacters(in: .whitespaces).isEmpty == true) {
            return false
        }
        return true
    }
}
