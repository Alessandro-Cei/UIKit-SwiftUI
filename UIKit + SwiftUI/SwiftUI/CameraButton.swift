//
//  CameraButton.swift
//  UIKit Test
//
//  Created by alessandro on 22/05/22.
//

import SwiftUI

struct CameraButton: UIViewRepresentable {
    @Binding var image: UIImage
    
    func makeUIView(context: Context) -> UIButton {
        let button = UIButton(type: .custom)
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 20, weight: .medium, scale: .default)
        let image = UIImage(systemName: "camera", withConfiguration: imageConfiguration)
        button.setImage(image, for: .normal)
        button.tintColor = UIColor(.white)
        
        let action = UIAction { _ in
                        
            let childView = UIHostingController(rootView: ChoiceView(image: $image))
            let sheet = childView.sheetPresentationController

            sheet?.detents = [.medium()]
            sheet?.prefersGrabberVisible = true
            
            button.window?.rootViewController?.present(childView, animated: true)
            
        }
        button.addAction(action, for: .touchUpInside)
        
        return button
    }
    
    func updateUIView(_ uiView: UIButton, context: Context) {

        if image != UIImage(named: "Test") {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                uiView.window?.rootViewController?.dismiss(animated: true)
            }
        }
    }
    
    typealias UIViewType = UIButton
    
    
}
