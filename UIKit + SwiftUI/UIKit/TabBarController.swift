//
//  TabBarController.swift
//  UIKit Test
//
//  Created by alessandro on 31/03/22.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        UITabBar.appearance().tintColor = UIColor(named: "SystemBlue")
        
        UINavigationBar.appearance().largeTitleTextAttributes =  [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor(named: "SystemBlue")!]
        UINavigationBar.appearance().tintColor = UIColor(named: "SystemBlue")        
        
    }

}
