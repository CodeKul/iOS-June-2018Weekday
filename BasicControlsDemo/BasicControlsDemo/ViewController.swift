//
//  ViewController.swift
//  BasicControlsDemo
//
//  Created by Varun on 13/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel: UILabel!
    @IBOutlet var myTextField: UITextField!
    @IBOutlet var slider : UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        myLabel.text = "\(sender.value)"
    }
    
    @IBAction func goButtonTouchUpInside(_ sender: Any) {
        myLabel.text = myTextField.text
    }
    
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            myLabel.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1 {
            myLabel.backgroundColor = UIColor.green
        }
        else {
            myLabel.backgroundColor = UIColor.blue
        }
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        slider.isUserInteractionEnabled = sender.isOn
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

