//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by Varun on 17/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func datePickerValueChanged(_ sender: UIDatePicker) {
        
        let df = DateFormatter()
        df.dateFormat = "yyyy-dd-MMM HH:mm:ss"
        print("Date: \(df.string(from:sender.date))")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

