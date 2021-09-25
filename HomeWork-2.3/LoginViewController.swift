//
//  LoginViewController.swift
//  HomeWork-2.3
//
//  Created by Ilya on 25.09.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextFiel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func logInButtonPress() {
        
    }
    @IBAction func forgotUNButtonPress() {
        forgotSmthAlert(title: "Oops!", message: "Your user name is: 'User'")
    }
    @IBAction func forgotPSWDButtonPress() {
        forgotSmthAlert(title: "Oops!", message: "Your password is: 'Password'")
    }
    

}

// MARK: - AlertViewControllers
extension LoginViewController{
    private func forgotSmthAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func wrongDataAlert(title: String, message: String){
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Try again", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
