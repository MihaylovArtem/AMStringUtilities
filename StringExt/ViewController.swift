//
//  ViewController.swift
//  StringExt
//
//  Created by Артем Михайлов on 26.10.2017.
//  Copyright © 2017 Артем Михайлов. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var formatTextField: UITextField!
    @IBOutlet weak var phoneTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func checkButtonTapped(_ sender: UIButton) {
        String.phoneFormat = formatTextField.text ?? ""
        resultLabel.text = phoneTextField.text?.formatPhone()
    }
    
}

