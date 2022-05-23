//
//  ViewController.swift
//  UIKit Test
//
//  Created by alessandro on 31/03/22.
//
import SwiftUI
import UIKit

class RoutesViewController: UIViewController {
    
    @IBOutlet weak var theContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let childView = UIHostingController(rootView: RoutesView())
        addChild(childView)
        childView.view.frame = view.bounds
        view.addSubview(childView.view)
        childView.didMove(toParent: self)
        

        
    }
    
    
}

