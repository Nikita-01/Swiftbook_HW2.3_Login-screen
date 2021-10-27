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
    
    var trueUserName = "User"
    var truePassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userTF.text = ""
        passwordTF.text = ""
        userTF.delegate = self
        passwordTF.delegate = self
    }
    
    @IBAction func LoginButtomPressed() {
        if userTF.text != trueUserName || passwordTF.text != truePassword {
            let alert = UIAlertController(title: "Invalid login or password", message: "Please, enter correct login and password", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .default) { _ in
                self.userTF.text = ""
                self.passwordTF.text = ""
            }
            alert.addAction(action)
            present(alert, animated: true)
        }
    }
    @IBAction func forgetUserNameButtomPressed() {
        let alert = UIAlertController(title: "Oops", message: "User Name is \(trueUserName)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            self.userTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    @IBAction func forgetPasswordButtomPressed() {
        let alert = UIAlertController(title: "Oops", message: "Password is \(truePassword)", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default) { _ in
            self.userTF.text = ""
            self.passwordTF.text = ""
        }
        alert.addAction(action)
        present(alert, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreatingViewController else { return }
        greetingVC.userName = userTF.text
    }
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTF.text = ""
        passwordTF.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userTF {
            passwordTF.becomeFirstResponder()}
        else if textField == passwordTF {
            LoginButtomPressed()
        }
        return true
    }
    
    
}


