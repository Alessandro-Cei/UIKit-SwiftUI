//
//  ViewController.swift
//  UIKit Test
//
//  Created by alessandro on 31/03/22.
//
import SwiftUI
import UIKit

class TicketsViewController: UIViewController {
    
    @IBOutlet weak var theContainer: UIView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let childView = UIHostingController(rootView: TicketsView())
        addChild(childView)
        childView.view.frame = view.bounds
        view.addSubview(childView.view)
        childView.didMove(toParent: self)
        
        if let tabBarItem1 = self.tabBarController?.tabBar.items?[0] {
            tabBarItem1.title = "Tickets"
            tabBarItem1.image = UIImage(named: "Ticket")
            tabBarItem1.selectedImage = UIImage(named: "TicketSelected")
        }
        if let tabBarItem2 = self.tabBarController?.tabBar.items?[1] {
            tabBarItem2.title = "Routes"
            tabBarItem2.image = UIImage(named: "Route")
            tabBarItem2.selectedImage = UIImage(named: "RouteSelected")
        }
        if let tabBarItem3 = self.tabBarController?.tabBar.items?[2] {
            tabBarItem3.title = "Profile"
            tabBarItem3.image = UIImage(named: "Profile")
            tabBarItem3.selectedImage = UIImage(named: "ProfileSelected")
        }
    }
    
    
}

