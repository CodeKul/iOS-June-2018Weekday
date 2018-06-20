//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Varun on 17/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {

    var array : [String]?
    var names : [String]?

    override func viewDidLoad() {
        super.viewDidLoad()

        array = ["Red", "Green", "Blue", "Brown", "Yellow", "Pink", "Gray", "Black", "White"]
        names = ["Ankush", "Varun", "Nikhil", "Aniruddha", "Abhijeet", "John"]
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return array!.count
        }
        return names!.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return array![row]
        }
        return names![row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            print(array![row])
        }
        else {
            print(names![row])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

