//
//  RoutesView.swift
//  UIKit Test
//
//  Created by alessandro on 31/03/22.
//

import SwiftUI

struct RoutesView: View {
    
    @State var showAcquire = false
    @State private var showRoundTrip = false
    @State private var departure: String = ""
    @State private var arrival: String = ""
    @State private var departureDateTime = Date.now
    @State private var returnDateTime = Date.now
    
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
                    ZStack {
                        ScrollView{
                            ZStack {
                                RoundedRectangle(cornerRadius: 10)
                                    .foregroundColor(.white)
                                VStack{
                                    Toggle("Round Trip", isOn: $showRoundTrip)
                                        .padding(.trailing, 8)
                                        .foregroundColor(Color("TextBlue"))
                                        .tint(Color("SystemBlue"))
                                    ZStack {
                                        VStack(alignment: .leading){
                                            Text("From:")
                                                .foregroundColor(Color("TextBlue"))
                                            TextField(
                                                "Departure",
                                                text: $departure
                                            )
                                                .foregroundColor(Color("SystemBlue"))
                                            
                                            Text("To:")
                                                .foregroundColor(Color("TextBlue"))
                                            TextField(
                                                "Arrival",
                                                text: $arrival
                                            )
                                                .foregroundColor(Color("SystemBlue"))

                                        }
                                        Button(action: {
                                            let temp = arrival
                                            arrival = departure
                                            departure = temp
                                        }, label: {
                                            Image(systemName: "arrow.up.arrow.down")
                                                .font(.largeTitle)
                                                .frame(width: 35, height: 35)
                                                .padding()
                                                .background(Color("SystemBlue").cornerRadius(10))
                                                .foregroundColor(.white)
                                        })
                                            .position(CGPoint(x: 285, y: 57))
                                    }
                                    .padding(.top, 10)
                                    VStack(){
                                        HStack {
                                            Spacer()
                                            Image(systemName: "calendar.badge.clock")
                                                .font(.system(size: 33))
                                                .foregroundColor(Color("TextBlue"))
                                            Spacer()
                                            DatePicker("Departure", selection: $departureDateTime, in: Date()...,  displayedComponents: [.date, .hourAndMinute])
                                                .foregroundColor(Color("TextBlue"))
                                                .labelsHidden()
                                            .accentColor(Color("SystemBlue"))
                                            Spacer()
                                        }
                                            
                                        if showRoundTrip{
                                            Spacer()
                                            HStack {
                                                Spacer()
                                                Image(systemName: "calendar.badge.clock")
                                                    .font(.system(size: 33
                                                                 ))
                                                    .foregroundColor(Color("TextBlue"))
                                                Spacer()
                                            DatePicker("Return", selection: $returnDateTime, in: Date()..., displayedComponents: [.date, .hourAndMinute])
                                                .foregroundColor(Color("TextBlue"))
                                                .accentColor(Color("SystemBlue"))
                                                .labelsHidden()
                                                Spacer()
                                            }

                                        }
                                        
                                    }
                                    .padding(.top, 10)
                                }
                                .padding()
                            }
                            .foregroundColor(Color("SystemBlue"))
                            .padding()
                            Button(action: {
                                
                            }, label: {
                                Text("Search")
                                    .frame(maxWidth: .infinity)
                                    .padding()
                                    .background(Color("SystemBlue").cornerRadius(10))
                                    .foregroundColor(.white)
                            })
                                .padding()
                                .padding(.top)
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            HStack {
                                Text("Recent")
                                    .font(.title2)
                                    .foregroundColor(Color("TextBlue"))
                                    .padding()
                                    .padding(.top, -20)
                                Spacer()
                            }
                           
                            ZStack{
                                
                                List {
                                    NavigationLink(destination: DummyView()){
                                        VStack (alignment: .leading){
                                            Text("Napoli Piazza Cavour")
                                            Text("Napoli San Giovanni Barra")
                                        }
                                        .foregroundColor(Color("SystemBlue"))
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                    NavigationLink(destination: DummyView()) {
                                        VStack (alignment: .leading){
                                            Text("Napoli Montesanto")
                                            Text("Napoli Campi Flegrei")
                                        }
                                        .foregroundColor(Color("SystemBlue"))
                                    }
                                    .buttonStyle(PlainButtonStyle())
                                }
                            }
                            .frame(width: UIScreen.main.bounds.width, height: 150)
                        }
                    }
                }
            }
            .background(Color(UIColor.systemGray6))
            .navigationBarTitleDisplayMode(.large)
            .navigationTitle("Routes")
            .onAppear(){
                UITableView.appearance().isScrollEnabled = false
            }
            
        }
    }
}

struct RoutesView_Previews: PreviewProvider {
    static var previews: some View {
        RoutesView()
    }
}
