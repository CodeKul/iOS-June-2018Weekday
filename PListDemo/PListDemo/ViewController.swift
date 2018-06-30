//
//  ViewController.swift
//  PListDemo
//
//  Created by Varun on 30/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let path = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first)! + "/myPlist.plist"

        print(path)
        
        //Dictionary
//        let dict = NSDictionary(dictionary: ["Name": "Ankush", "Address": "Pune", "Phone": "1234567890", "Friend": "Varun"])
//        dict.write(toFile: path, atomically: true)
        
        //Array
//        let arr = NSArray(array: ["Red", "Green", "Blue"])
//        arr.write(toFile: path, atomically: true)
        
        let arr = NSMutableArray(contentsOfFile: path)
        print(arr!)
        arr?.add("Yellow")
        arr?.remove("Red")
        arr?.write(toFile: path, atomically: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

