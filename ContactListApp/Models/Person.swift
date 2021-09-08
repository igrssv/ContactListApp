//
//  Contact.swift
//  ContactListApp
//
//  Created by Игорь Сысоев on 07.09.2021.
//

struct Person {
    var name: String
    var surname: String
    var phone: String
    var iconPhone: String
    var mail: String
    var iconMail: String
    
    var fullName: String {
        name + " " + surname }
    
    var fullPhone: String {
        iconPhone + " " + phone
    }
    
    var fullMail: String {
        iconMail + " " + mail
    }
}




