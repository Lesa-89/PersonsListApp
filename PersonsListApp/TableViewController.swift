//
//  TableViewController.swift
//  PersonsListApp
//
//  Created by macbook on 11/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit


class TableViewController: UITableViewController {
    
    let personList = personArrayCteating()
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return personArrayCteating().count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PersonName", for: indexPath)
        
        cell.textLabel?.text = personList[indexPath.row].fullName
        cell.textLabel?.numberOfLines = 0
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            let detailVC = segue.destination as! DetailViewController
            detailVC.person = personList[indexPath.row]
        }
    }
}
