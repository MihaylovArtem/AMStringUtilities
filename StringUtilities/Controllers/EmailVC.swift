//
//  EmailVC.swift
//  StringUtilities
//
//  Created by Artem Mihaylov on 28.10.2017.
//  Copyright © 2017 Artem Mihaylov. All rights reserved.
//

import UIKit

class EmailVC: UIViewController {
    
    @IBOutlet weak var emailTF: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBAction func checkButtonTapped() {
        guard let email = emailTF.text, !email.characters.isEmpty else {
            resultLabel.text = "Enter e-mail"
            resultLabel.textColor = .red
            return
        }
        if email.isCorrectEmail() {
            resultLabel.text = "Correct e-mail"
            resultLabel.textColor = UIColor.green
        } else {
            resultLabel.text = "Incorrect e-mail"
            resultLabel.textColor = .red
        }
    }
}
