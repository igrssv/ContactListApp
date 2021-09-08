//
//  ChoiseTabBarController.swift
//  ContactListApp
//
//  Created by Игорь Сысоев on 08.09.2021.
//

import UIKit

class ChoiseTabBarController: UITabBarController, UITabBarControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        tabBarController?.delegate = self
 
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? ChoiseTabBarController else {return}
        
        //а здесь принудительное разворачивание контроллеров из TabBar это норма или нет?
        for viewController in tabBarController.viewControllers! {
            if let navigationVC = viewController as? UINavigationController{
                if let contactVC = navigationVC.topViewController as? ContactListViewController {
                    }
            }
            
        }
    }



}
