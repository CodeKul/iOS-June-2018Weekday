//
//  ViewController.swift
//  Demo1
//
//  Created by Varun on 14/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var mylabel:UILabel?
    var mytextfield:UITextField?
    var slider:UISlider?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
       // Label
        mylabel = UILabel(frame: CGRect(x: 20, y: 20, width:288, height: 20))
        mylabel?.text = "codekul"
        mylabel?.textAlignment = .center
        mylabel?.backgroundColor = UIColor.black
        mylabel?.textColor = UIColor.cyan
        mylabel?.font = UIFont(name: "Times New Roman", size:20 )
        self.view.addSubview(mylabel!)
        
        //Textfield
        mytextfield = UITextField(frame: CGRect(x: 20, y: 50, width: 50, height: 20))
            mytextfield?.placeholder = "Name"
        mytextfield?.textColor = UIColor.blue
        self.view.addSubview(mytextfield!)
        
        //Button
        let buttonclick:UIButton
        buttonclick = UIButton(frame: CGRect(x: 120, y: 80, width: 40, height: 20))
        self.view.addSubview(buttonclick)
        buttonclick.setTitle("Click", for: .normal)
        buttonclick.setTitleColor(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1), for: .normal)
        buttonclick.addTarget(self, action: #selector(btnclick), for: .touchUpInside)
       //slider
        slider = UISlider(frame: CGRect(x: 20, y: 120, width:288 , height: 40))
        slider?.minimumValue = 0
        slider?.maximumValue = 100
        slider?.value = 0
        slider?.isContinuous = false
        self.view.addSubview(slider!)
        slider?.addTarget(self, action: #selector(ChangeValue), for:.valueChanged)
        //segmented control
        let segment:UISegmentedControl
        segment = UISegmentedControl(frame: CGRect(x: 100, y: 180, width: 188, height: 40))
        segment.insertSegment(withTitle: "Red", at: 0, animated: true)
        segment.insertSegment(withTitle: "Green", at: 1, animated: true)
        segment.insertSegment(withTitle: "Blue", at: 2, animated: true)
        segment.addTarget(self, action: #selector(SegmentValueChange), for: .valueChanged)
        self.view.addSubview(segment)
        let onoffSwitch:UISwitch
        onoffSwitch = UISwitch(frame: CGRect(x: 130, y: 240, width: 50, height: 40))
        self.view.addSubview(onoffSwitch)
        onoffSwitch.isOn = true
        onoffSwitch.addTarget(self, action: #selector(SwitchValueChange), for: .valueChanged)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   @objc func btnclick()
   {
    mylabel?.text = mytextfield?.text
    }
   @objc func ChangeValue()
   {
    mylabel?.text = "\((slider?.value)!)"
    }
    @objc func SegmentValueChange(_ sender:UISegmentedControl)
    {
        if sender.selectedSegmentIndex == 0
        {
        mylabel?.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1
        {
            mylabel?.backgroundColor = UIColor.green
        }
        else
        {
          mylabel?.backgroundColor = UIColor.blue
        }
        }
    @objc func SwitchValueChange(_ sender:UISwitch)
    {
        slider?.isUserInteractionEnabled = sender.isOn
    }
    }


