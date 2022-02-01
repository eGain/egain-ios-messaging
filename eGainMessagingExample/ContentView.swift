//
//  ContentView.swift
//  eGainMessagingExample
//
//  Created by Naveen Manoharan on 1/31/22.
//

import SwiftUI
import eGainMessaging

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack {
                Image("easy-with-eGain-logo")
                    .resizable()
                    .scaledToFit()
                LaunchView(clientId: "XXXXXX", clientSecret:"XXXXXX",
                    emailId:"xyz@email.com",nameOfUser: "xyz", botGreeting: false)
            }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .ignoresSafeArea()
        }.onAppear{
            // To use branding
            setConfig()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
