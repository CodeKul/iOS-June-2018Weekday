//
//  ViewController.swift
//  NavigationSegueDemo
//
//  Created by Varun on 30/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "FVC2SVC" {
            let vc = segue.destination as! SecondViewController
            vc.str = txt.text
        }
    }
    
}

