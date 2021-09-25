//
//  LoginViewController.swift
//  HomeWork-2.3
//
//  Created by Ilya on 25.09.2021.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let tap = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tap)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let WelcomeVC = segue.destination as? WelcomeViewController else {return}
        WelcomeVC.userName = userNameTextField.text
    }
    
    @IBAction func logInButtonPress() {
        if userNameTextField.text != "User" || passwordTextField.text != "Password"{
            wrongDataAlert(title: "Oops!", message: "Login or Password is incorrect")
        } else {
            performSegue(withIdentifier: "segueFromLoginToWelcome", sender: nil)
        }
        
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
        let okAction = UIAlertAction(title: "Try Again", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
