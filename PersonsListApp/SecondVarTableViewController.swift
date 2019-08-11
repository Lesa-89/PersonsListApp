//
//  SecondVarTableViewController.swift
//  PersonsListApp
//
//  Created by macbook on 11/08/2019.
//  Copyright © 2019 macbook. All rights reserved.
//

import UIKit

class SecondVarTableViewController: UITableViewController {

    var sectionNumber = 0
    
    let personList = personArrayCteating()

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return personList.count
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        sectionNumber = section
        return personList[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SecondVarPersonName", for: indexPath)
        switch indexPath.row {
        case 0:
             cell.textLabel?.text = personList[indexPath.section].phoneNumber
        case 1:
             cell.textLabel?.text = personList[indexPath.section].email
        default:
            break
        }
        
        return cell
    }

}
