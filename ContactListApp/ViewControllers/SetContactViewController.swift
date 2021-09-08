//
//  SetContactViewController.swift
//  ContactListApp
//
//  Created by Игорь Сысоев on 08.09.2021.
//

import UIKit

class SetContactViewController: UIViewController {

    @IBOutlet weak var phoneContactLabel: UILabel!
    @IBOutlet weak var emailContactLabel: UILabel!
    
    var phone: String!
    var mail: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        phoneContactLabel.text = "Phone: " + "\(phone ?? "")"
        emailContactLabel.text = "Mail: " + "\(mail ?? ""))"
    }
    

}
