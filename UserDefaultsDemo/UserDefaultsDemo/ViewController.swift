//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Varun on 30/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        UserDefaults.standard.setValue("The Gurukul for Coders!", forKey: "Name")
//        UserDefaults.standard.synchronize()
        
        print(UserDefaults.standard.value(forKey: "Name")!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

