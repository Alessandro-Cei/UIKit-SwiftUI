//
//  Profileview.swift
//  UIKit Test
//
//  Created by alessandro on 31/03/22.
//

import SwiftUI

struct ProfileView: View {
    
    @State var image: UIImage = UIImage(named: "Test")!
    
    var body: some View {
        
        NavigationView{
            
            GeometryReader { geometry in
                
                ZStack{
                    
                    VStack {
                        Image("Napoli2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(RoundedRectangle(cornerRadius: 30))
                            .edgesIgnoringSafeArea(.top)
                        Spacer()
                    }
                    
                    VStack (spacing: -500){
                        
                        Circle()
                            .strokeBorder(Color("LighterBlue"),lineWidth: 4)
                            .background(Circle().foregroundColor(Color.white))
                            .frame(width: geometry.size.width * 0.4)
                            .overlay(alignment: .center, content: {
                                
                                ZStack{
                                    
                                    Image(uiImage: image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fill)
                                        .clipShape(Circle())
                                        .overlay(){
                                            ZStack{
                                                Circle()
                                                    .strokeBorder(.white,lineWidth: 4)
                                                    .background(Circle().foregroundColor(Color.clear))
                                                Circle()
                                                    .strokeBorder(Color("LighterBlue"),lineWidth: 0)
                                                    .background(Circle().foregroundColor(Color.clear))
                                            }
                                            .frame(width: 158, height: 158, alignment: .center)
                                            
                                        }
                                        .frame(width: 150, height: 150, alignment: .center)

                                    CameraButton(image: $image)
                                        .frame(width: 50, height: 50)
                                        .background(Color(UIColor(named: "SystemBlue")!))
                                        .cornerRadius(25)
                                        .shadow(color: .black.opacity(0.5), radius: 2, x: 0, y: 2)
                                        .offset(x: 55, y: 55)
                                }
                            })
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 2.5)
                            
                        Text("John Smith")
                            .font(.title)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                            .position(x: geometry.size.width / 2, y: geometry.size.height / 3)
                    }
                    .edgesIgnoringSafeArea(.top)
                    
                    VStack (spacing: 0){
                        List {
                            NavigationLink(destination: DummyView(), label: {
                                HStack (alignment: .center, spacing: 10){
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 3)
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(Color("SystemBlue"))
                                        Image(systemName: "person")
                                            .foregroundColor(.white)
                                    }
                                    Text("Personal Data")
                                        .foregroundColor(Color("SystemBlue"))
                                }
                            })
                            
                              
                            NavigationLink(destination: DummyView(), label: {
                                HStack (alignment: .center, spacing: 10){
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 3)
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(Color("SystemBlue"))
                                        Image(systemName: "creditcard")
                                            .foregroundColor(.white)
                                    }
                                    Text("Cards")
                                        .foregroundColor(Color("SystemBlue"))
                                }
                            })
                            
                            NavigationLink(destination: DummyView(), label: {
                                HStack (alignment: .center, spacing: 10){
                                    ZStack {
                                        RoundedRectangle(cornerRadius: 3)
                                            .frame(width: 25, height: 25)
                                            .foregroundColor(Color("SystemBlue"))
                                        Image(systemName: "phone")
                                            .foregroundColor(.white)
                                    }
                                    Text("Support")
                                        .foregroundColor(Color("SystemBlue"))
                                }
                            })
                        }
                        .listStyle(InsetGroupedListStyle())
                        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 1.8)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("Logout")
                                .foregroundColor(.white)
                                .padding()
                                .frame(width: geometry.size.width * 0.9)
                                .background(Color("SystemBlue"))
                        })
                        
                        .cornerRadius(10)
                        .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height / 3.5)
                    }
                }
            }
            .background(Color(UIColor.systemGray6))
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Profile")
            .onAppear(){
                UITableView.appearance().isScrollEnabled = false
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
