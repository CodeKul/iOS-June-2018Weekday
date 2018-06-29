//
//  FourthViewController.swift
//  NavigationControllerDemo
//
//  Created by Varun on 27/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {

    @IBOutlet var lbl : UILabel!
    var strData : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = true
        
        lbl.text = strData!
    }

    @IBAction func backButtonTouchUpInside(_ sender : UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func gotoSVCButtonTouchUpInside(_ sender : UIButton) {
        let arrVCs = self.navigationController?.viewControllers
        
        for vc in arrVCs! {
            if vc is SecondViewController {
                self.navigationController?.popToViewController(vc, animated: true)
            }
        }
    }
}
