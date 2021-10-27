//
//  GreatingViewController.swift
//  Login screen
//
//  Created by Никита Рыжкин on 27.10.2021.
//

import UIKit

class GreatingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var userName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcom, " + userName + "!"

    }
    
    @IBAction func logOutButtomPressed() {
        dismiss(animated: true)
    }
    
}
