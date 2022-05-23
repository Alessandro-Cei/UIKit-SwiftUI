//
//  TicketsView.swift
//  UIKit Test
//
//  Created by alessandro on 31/03/22.
//

import SwiftUI

struct TicketsView: View {
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
                    ScrollView (showsIndicators: false) {
                        Ticket()
                        Ticket()
                        Ticket()
                        Ticket()
                    }
                
                }
            }
            .background(Color(UIColor.systemGray6))
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Tickets")
        }
        
    }
}

struct TicketsView_Previews: PreviewProvider {
    static var previews: some View {
        TicketsView()
    }
}
