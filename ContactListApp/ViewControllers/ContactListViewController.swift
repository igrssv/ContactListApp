//
//  ContactListViewController.swift
//  ContactListApp
//
//  Created by Игорь Сысоев on 07.09.2021.
//

import UIKit

class ContactListViewController: UITableViewController {
    
    private let contact = DataManager.getContactList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contact.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contactCell", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text =  contact[indexPath.row].fullName
        
        cell.contentConfiguration = content

        return cell
    }
    


  
//     MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let setContactVC = segue.destination as? SetContactViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        setContactVC.title = contact[indexPath.row].fullName
        setContactVC.phone = contact[indexPath.row].phone
        setContactVC.mail = contact[indexPath.row].mail
        
        
        
    }


}
