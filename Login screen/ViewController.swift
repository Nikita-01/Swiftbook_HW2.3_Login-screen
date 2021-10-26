//
//  ViewController.swift
//  Login screen
//
//  Created by Никита Рыжкин on 26.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var userTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTF.text = ""
        passwordTF.text = ""
    }

    @IBAction func LoginButtomPressed() {
        if userTF.text != "User" || passwordTF.text != "Password" {
            showAlert(title: "Invalid login or password", message: "Please, enter correct login and password") }
    }
    @IBAction func forgetUserNameButtomPressed() {
        showAlert(title: "Oops ", message: "User Name is User")
    }
    @IBAction func forgetPasswordButtomPressed() {
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreatingViewController else { return }
        greetingVC.userName = userTF.text
    }
}

extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
//        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
//            self.textField.text = ""
//        }
//        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
