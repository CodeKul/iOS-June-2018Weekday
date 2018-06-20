//
//  ViewController.swift
//  BasicControlsByCode
//
//  Created by Varun on 14/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLabel : UILabel?
    var myTextField : UITextField?
    var slider : UISlider?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel = UILabel(frame: CGRect(x: 16, y: 20, width: 288, height: 30))
        myLabel?.text = "Codekul"
        myLabel?.font = UIFont(name: "Arial", size: 20)
        myLabel?.textAlignment = .center
        self.view.addSubview(myLabel!)
        
        myTextField = UITextField(frame: CGRect(x: 16, y: 50, width: 288, height: 30))
        myTextField?.placeholder = "Name"
        self.view.addSubview(myTextField!)
        
        let myButton = UIButton(frame: CGRect(x: 120, y: 90, width: 80, height: 30))
        myButton.setTitle("Go", for: .normal)
        myButton.setTitleColor(#colorLiteral(red: 0.3176470697, green: 0.07450980693, blue: 0.02745098062, alpha: 1), for: .normal)
        myButton.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        self.view.addSubview(myButton)
        
        let segmentedControl = UISegmentedControl(frame: CGRect(x: 16, y: 130, width: 288, height: 40))
        segmentedControl.insertSegment(withTitle: "Red", at: 0, animated: true)
        segmentedControl.insertSegment(withTitle: "Green", at: 1, animated: true)
        segmentedControl.insertSegment(withTitle: "Blue", at: 2, animated: true)
        
        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        self.view.addSubview(segmentedControl)
        
        slider = UISlider(frame: CGRect(x: 16, y: 180, width: 288, height: 40))
        slider?.minimumValue = 0
        slider?.maximumValue = 100
        slider?.value = 0
        slider?.isContinuous = false
        slider?.addTarget(self, action: #selector(sliderValueChanged), for: .valueChanged)
        self.view.addSubview(slider!)
        
        let mySwitch = UISwitch(frame: CGRect(x: 130, y: 230, width: 60, height: 40))
        mySwitch.addTarget(self, action: #selector(switchValueChanged), for: .valueChanged)
        mySwitch.isOn = true
        self.view.addSubview(mySwitch)
    }

    @objc func switchValueChanged(_ sender : UISwitch) {
        slider?.isUserInteractionEnabled = sender.isOn
    }
    
    @objc func sliderValueChanged(_ sender: UISlider) {
        myLabel?.text = "\((slider?.value)!)"
    }
    
    @objc func segmentedControlValueChanged(_ sender : UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            myLabel?.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1 {
            myLabel?.backgroundColor = UIColor.green
        }
        else {
            myLabel?.backgroundColor = UIColor.blue
        }
    }
    
    @objc func buttonClicked(_ sender : UIButton) {
        myLabel?.text = myTextField?.text
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

