//
//  ViewController.swift
//  SQLiteDemo
//
//  Created by Varun on 30/06/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var addButton : UIButton!
    @IBOutlet var myTableView : UITableView!
    
    var students : [Student]?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate

    override func viewDidLoad() {
        super.viewDidLoad()
        students = []
        addButton.layer.cornerRadius = addButton.frame.height/2
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        getDataAndReloadTable()
    }

    func getDataAndReloadTable() {
        
        let arrData = appDelegate.selectQuery("SELECT * FROM Student")
        students = []
        for data in arrData {
            
            let stu = Student(rno: Int(data["roll_no"] as! String)!, name: data["name"] as! String, marks: Int(data["marks"] as! String)!)
            students?.append(stu)
        }
        myTableView.reloadData()
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = students![indexPath.row].name
        cell?.detailTextLabel?.text = "\(students![indexPath.row].marks)"
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "AddStudentViewController") as! AddStudentViewController
        vc.stu = students![indexPath.row]
        self.present(vc, animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

