//
//  DateVC.swift
//  StringUtilities
//
//  Created by Артем Михайлов on 30.10.2017.
//  Copyright © 2017 Артем Михайлов. All rights reserved.
//

import UIKit

class DateVC: UIViewController {

    @IBOutlet weak var datePicker: UIDatePicker!
    @IBOutlet weak var dateFormat: UITextField!
    @IBOutlet weak var dateTF: UITextField!
    
    @IBOutlet weak var warningLabel: UILabel!
    
    @IBAction func dateChanged(_ sender: UIDatePicker) {
        warningLabel.textColor = .white
        dateTF.text = String(withDate: sender.date)
    }
    
    @IBAction func formatChanged(_ sender: UITextField) {
        warningLabel.textColor = .white
        String.dateFormat = sender.text ?? ""
    }
    
    @IBAction func dateTextChanged(_ sender: UITextField) {
        if let date = sender.text?.toDate() {
            warningLabel.textColor = .white
            datePicker.date = date
        } else {
            warningLabel.textColor = .red
        }
    }
    
    
    
}
