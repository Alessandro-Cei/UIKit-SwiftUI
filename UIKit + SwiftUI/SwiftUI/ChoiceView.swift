//
//  ChoiceView.swift
//  UIKit Test
//
//  Created by alessandro on 22/05/22.
//

import SwiftUI

struct ChoiceView: View {
    
    @Binding var image: UIImage
    @State var showImagePicker = false
    @State var showCamera = false

    
    var body: some View {
        VStack (spacing: 60){
            Spacer()
            
            Text("Choose where to pick your new Profile picture from:")
                .multilineTextAlignment(.center)
                .font(.title2)
                .foregroundColor(Color("TextBlue"))
            
            Button(action: {
                showCamera.toggle()
            }, label: {
               RoundedRectangle(cornerRadius: 10)
                    .frame(width: UIScreen.main.bounds.width * 0.8, height: 50, alignment: .center)
                    .foregroundColor(Color("SystemBlue"))
                    .overlay(
                        Text("Camera")
                            .foregroundColor(.white)
                    )
            })
            .sheet(isPresented: $showCamera) {
                ImagePicker(image: $image, sourceType: .camera)
            }
            
            Button(action: {
                showImagePicker.toggle()
            }, label: {
                RoundedRectangle(cornerRadius: 10)
                     .frame(width: UIScreen.main.bounds.width * 0.8, height: 50, alignment: .center)
                     .foregroundColor(Color("SystemBlue"))

                     .overlay(
                         Text("Library")
                             .foregroundColor(.white)
                     )
            })
            .sheet(isPresented: $showImagePicker) {
                ImagePicker(image: $image, sourceType: .photoLibrary)
            }
            
            Spacer()
        }
    }
}

//struct ChoiceView_Previews: PreviewProvider {
//    static var previews: some View {
//        ChoiceView()
//    }
//}
