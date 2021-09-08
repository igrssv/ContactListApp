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
        print(contact)
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
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
