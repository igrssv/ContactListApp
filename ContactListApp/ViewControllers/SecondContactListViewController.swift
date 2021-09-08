//
//  SecondContactListViewController.swift
//  ContactListApp
//
//  Created by Игорь Сысоев on 07.09.2021.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    
    let contact = DataManager.getContactList()
    var nameSection: String = ""
    override func viewDidLoad() {
        
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return contact.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let text = contact[section].fullName
        return text
    }
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactSecondCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        var test = tableView.numberOfRows(inSection: 2)

        content.text  = contact[test].mail





        cell.contentConfiguration = content
        
        // Configure the cell...
        
        return cell
    }
    


    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

    }
    

}
