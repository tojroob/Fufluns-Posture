//
//  ContentView.swift
//  Fufluns Posture
//
//  Created by James Yang on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    //@ObservedObject var settings = NotificationDelegate()
    //@StateObject var settings = NotificationDelegate()
    //@ObservedObject var settings = User()
    @EnvironmentObject var settings: NotificationDelegate
    @State private var selection = 2
    
    var body: some View {
        TabView(selection: $selection) { //tabview won't update. why?
            
            HealthGuide()
                .tabItem{
                    Button(action:{}){
                        Image(systemName: "cross.case.fill")
                        Text("Health Guide")
                    }
                }
                .tag(1)
            
            Homepage()
                .tabItem{
                    Button(action:{}){
                        Image(systemName: "leaf.fill")
                        Text("Home")
                    }
                }
                .tag(2)

            //Settings()
            Settings()
                .tabItem{
                    Button(action:{}){
                        Image(systemName: "person")
                        Text("Settings")
                    }
                }
                .tag(3)
        }
        .environmentObject(settings)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NotificationDelegate())
    }
}
