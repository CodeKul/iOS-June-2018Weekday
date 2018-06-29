//
//  ThirdViewController.swift
//  NavigationControllerDemo
//
//  Created by Varun on 26/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    @IBOutlet var txt : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ThirdViewController : viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("ThirdViewController : viewWillAppear")
        self.navigationController?.isNavigationBarHidden = false
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ThirdViewController : viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ThirdViewController : viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ThirdViewController : viewDidDisappear")
    }
    
    @IBAction func nextButtonTouchUpInside(_ sender: UIButton) {
     
        let fvc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "FourthViewController") as! FourthViewController
        fvc.strData = txt.text
        self.navigationController?.pushViewController(fvc, animated: true)
    }
}
