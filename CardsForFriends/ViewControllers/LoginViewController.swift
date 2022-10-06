//
//  ViewController.swift
//  CardsForFriends
//
//  Created by Andrey Sandler on 04.10.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Public Properties
    let user = User.getUser()
    
    // MARK: - Override Methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarVC = segue.destination as? UITabBarController else { return }
        guard let viewControllers = tabBarVC.viewControllers else { return }

        viewControllers.forEach { viewController in
            if let homeVC = viewController as? HomeViewController {
                homeVC.greeting = user.username
            } else if let navigationVC = viewController as? UINavigationController {
                guard let cardVC = navigationVC.topViewController as? CardViewController else { return }
                
                cardVC.card = .getCard()
            }
        }
    }
    
    // MARK: - IB Actions
    @IBAction func forgotButton(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Oops", message: "Your username is \(user.username)")
        : showAlert(title: "Oops", message: "Your password is \(user.password)")
    }
    
    @IBAction func loginButtonDidTapped() {
        guard usernameTextField.text == user.username, passwordTextField.text == user.password else {
            showAlert(
                title: "Oops",
                message: "Wrong username or password",
                textField: passwordTextField
            )
            return
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        usernameTextField.text = ""
        passwordTextField.text = ""
    }
}

// MARK: - UIAlertController
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
