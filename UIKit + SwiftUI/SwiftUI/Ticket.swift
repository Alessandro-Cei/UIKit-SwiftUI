//
//  Ticket.swift
//  UIKit Test
//
//  Created by alessandro on 22/05/22.
//

import SwiftUI

struct Ticket: View {
    var body: some View {
        Rectangle()
            .frame(width: 361, height: 212, alignment: .center)
            .foregroundColor(.white)
            .shadow(color: .black.opacity(0.4), radius: 5, x: 5, y: 5)
            .padding()
            .overlay(
                ZStack {
                    HStack{
                        Rectangle()
                            .frame(width: 118, height: 212, alignment: .center)
                            .foregroundColor(.white)
                            .overlay(
                                VStack (alignment: .leading){
                                    Spacer()
                                    Text("Valid\nthrough\n10/2022")
                                        .bold()
                                        .foregroundColor(Color("TextBlue"))
                                        .padding()
                                }
                                    .offset(x: -20, y: 10)
                            
                                    
                            )
                        Image("Fantasy")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 243, height: 212, alignment: .center)
                            .overlay(
                                VStack (spacing: 10){
                                    Spacer()
                                    Spacer()
                                    Text("ONE WAY")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title2)
                                    Text("AIR NA6")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title2)
                                    Text("4.70€")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.title2)
                                    Spacer()
                                }
                            )
                    }
                    
                    VStack (spacing: 135){
                        Spacer()
                        
                        HStack (spacing: 0){
                            Text("U")
                                .bold()
                                .font(.system(size: 50))
                                .tracking(7)
                                .foregroundColor(Color(.sRGB, red: 0/255, green: 36/255, blue: 60/255, opacity: 1))
                            Text("NICO")
                                .bold()
                                .font(.system(size: 50))
                                .tracking(7)
                                .foregroundColor(.white)
                        }
                        Spacer()
                        Spacer()
                    }
                    .padding()

                }
            )
    }
}

struct Ticket_Previews: PreviewProvider {
    static var previews: some View {
        Ticket()
    }
}
