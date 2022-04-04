//
//  ContentView.swift
//  eGainMessagingExample
//
//  Created by Naveen Manoharan on 1/31/22.
//

import SwiftUI
import eGainMessaging

struct ContentView: View {
    @ObservedObject var appState = AppState()
    var body: some View {
        NavigationView{
            ZStack {
                Image("eight_bank_logo")
                LaunchView(clientId: "",
                           clientSecret:"", channelType: "", accountAddress: "", botGreeting: "")
                    .id(appState.rootViewId)
            }
            .frame(maxWidth:.infinity, maxHeight: .infinity)
            .background(Color(UIColor(red: 240/255, green: 248/255, blue: 255/255, alpha: 1)))
            .ignoresSafeArea()
        }
        .onAppear{
            setConfig()
        }
        .environmentObject(appState)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
