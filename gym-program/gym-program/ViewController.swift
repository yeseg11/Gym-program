//
//  ViewController.swift
//  gym-program
//
//  Created by Sagi on 1.3.2018.
//  Copyright © 2018 Sagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    

    @IBOutlet weak var top_pic: UIImageView!
    
    @IBOutlet var tableView: UITableView!
    
    let elements = ["Program A","Program B","Program C"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(tableView)
        
        tableView.delegate = self
        tableView.dataSource = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return elements.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomCell") as! MainTableViewCell
        
        cell.Plbl.text = elements[indexPath.row]
            //.setTitle(elements[indexPath.row], for: .normal)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let name = elements[indexPath.row]
        print(name)
        var str = "you select: "
        str+=name
        // create the alert
        let alert = UIAlertController(title: name, message: str, preferredStyle: UIAlertControllerStyle.alert)
        
        // add the actions (buttons)
        alert.addAction(UIAlertAction(title: "Continue", style: UIAlertActionStyle.default, handler: nil))
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)//        let viewController =  storyboard?.instantiateViewController(withIdentifier:name)
//        if viewController == nil{
//            print(name)
//        }
//
//       self.navigationController?.pushViewController(viewController!, animated: true)
        
        
    }

}

