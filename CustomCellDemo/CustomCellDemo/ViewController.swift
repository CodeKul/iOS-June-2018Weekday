//
//  ViewController.swift
//  CustomCellDemo
//
//  Created by Varun on 18/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var arr = [["top": "123", "left":"321", "right": "231"],["top": "456", "left":"654", "right": "546"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! MyTableViewCell
        cell.topLabel.text = arr[indexPath.row]["top"]
        cell.rightLabel.text = arr[indexPath.row]["right"]
        cell.leftLabel.text = arr[indexPath.row]["left"]
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

