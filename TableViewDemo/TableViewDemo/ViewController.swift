//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Varun on 17/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrData : [String]?
    var names : [String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        arrData = ["Red", "Green", "Blue", "Gray", "White", "Black", "Brown", "Yellow", "Pink", "Cyan"]
        names = ["Ankush", "Rahul", "Prasad", "Girish", "Varun", "Ramesh", "Varun", "Aniruddha", "Nikhil", "Abhijeet", "John"]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return arrData!.count
        }
        return names!.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        if section == 0 {
            return "Colors"
        }
        return "Names"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if indexPath.section == 0 {
            cell?.textLabel?.text = arrData![indexPath.row]
        }
        else {
            cell?.textLabel?.text = names![indexPath.row]
        }
        cell?.detailTextLabel?.text = "\(indexPath.row)"
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section == 0 {
            print(arrData![indexPath.row])
        }
        else {
            print(names![indexPath.row])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

