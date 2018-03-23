//
//  ViewController.swift
//  Swift4UITableView
//
//  Created by Rathish on 3/22/18.
//  Copyright © 2018 Rathish. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource, UITableViewDelegate {
    let country=["India","China","USA","Japan","Germany"]
    
    @IBOutlet weak var tableView: UITableView!
    let textCellIdentifier = "TextCell"
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return country.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: textCellIdentifier, for: indexPath)
        let row=indexPath.row
        cell.textLabel?.text=country[row]
        return cell
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate=self
        tableView.delegate=self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}

