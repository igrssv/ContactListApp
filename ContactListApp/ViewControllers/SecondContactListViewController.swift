//
//  SecondContactListViewController.swift
//  ContactListApp
//
//  Created by Игорь Сысоев on 07.09.2021.
//

import UIKit

class SecondContactListViewController: UITableViewController {
    
    let contact = DataManager.getContactList()

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return contact.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        let text = contact[section].fullName
        return text
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactSecondCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()

        // мне кажется есть реализация проще и правильнее, жду комментариев
        if indexPath.row == 0 {
            
            content.text  = contact[indexPath.row].fullPhone
        }else if indexPath.row == 1{
            content.text  = contact[indexPath.row - 1].fullMail
        }

        cell.contentConfiguration = content
        
        return cell
    }
    
}
