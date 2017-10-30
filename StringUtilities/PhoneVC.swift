//
//  PhoneVC.swift
//  StringExt
//
//  Created by Артем Михайлов on 28.10.2017.
//  Copyright © 2017 Артем Михайлов. All rights reserved.
//

import UIKit

class PhoneVC: UIViewController {
    
    @IBOutlet weak var formatTF: UITextField!
    @IBOutlet weak var textTF: UITextField!
    @IBOutlet weak var formattedTextTF: UITextField!
    @IBOutlet weak var defaultFormatL: UILabel!
    
    @IBAction func standartFormatPhoneButtonTapped() {
        defaultFormatL.text = textTF.text?.defaultFormatPhone()
    }
    
    @IBAction func formatTFTextChanged(_ sender: UITextField) {
        String.phoneFormat = sender.text ?? ""
    }
    
    @IBAction func textToFormatChanged(_ sender: UITextField) {
        formattedTextTF.text = sender.text?.formatPhone()
    }
    
}
