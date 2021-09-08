//
//  DataManager.swift
//  ContactListApp
//
//  Created by Игорь Сысоев on 07.09.2021.
//

class DataManager{
    
    static let dateManager = DataManager()
    
    static func getContactList() -> [Person]{
        var person = [Person]()
        let names = ["Piter", "Tony", "Stiven", "Otto", "Norman", "Thor", "Loki", "Natasha", "Hanck", "Sam", "Baki"].shuffled()
        let surnames = ["Parker", "Stark", "Rogers", "Octavius", "Osborn", "Odinson", "Lafeyson", "Romannof", "Pim", "Willson", "Barns" ].shuffled()
        let phones = ["+7977123222", "+7926737227", "+79362223141", "+79991112233", "+79661236969", "+79553213443","+79085350041", "+79674421914", "+79090030011", "+79887653421", "+79778985434"].shuffled()
        let mails = ["spider-in-avenses@torh.ru", "starknomberone@strk.com", "palldiy@gmail.com", "peggylove@live.com", "mr-green@oscorp.com", "thor-ber-god@asgard.as", "prince-asgarda@asgard.as", "budapeshtstory@rambler.ru", "microbig@pim.com", "birdman@gmail.com", "fingersoldat@mail.com"].shuffled()
        let iconePhone = "📳"
        let iconMail = "📨"
        
        for i in 0...names.count - 1{
            person.append(Person(name: names[i],
                                  surname: surnames[i],
                                  phone: phones[i],
                                  iconPhone: iconePhone,
                                  mail: mails[i],
                                  iconMail: iconMail))
        }
        return person
        

    }

}

