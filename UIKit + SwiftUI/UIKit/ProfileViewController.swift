//
//  ViewController.swift
//  UIKit Test
//
//  Created by alessandro on 31/03/22.
//
import SwiftUI
import UIKit


class ProfileViewController: UIViewController {
    
    @IBOutlet weak var theContainer: UIView!

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let childView = UIHostingController(rootView: ProfileView())
        addChild(childView)
        childView.view.frame = view.bounds
        view.addSubview(childView.view)
        childView.didMove(toParent: self)

        
    }
    
    
    
    
}

