//
//  SecondViewController.swift
//  NavigationSegueDemo
//
//  Created by Varun on 30/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var lbl: UILabel!
    var str: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lbl.text = str
    }

    @IBAction func backButtonTouchUpInside(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
