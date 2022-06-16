//
//  ContentView.swift
//  Fufluns Posture
//
//  Created by James Yang on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var settings = NotificationDelegate()
    //@ObservedObject var settings = User()
    
    
    
    var body: some View {
        TabView { //tabview won't update. why?
            
            HealthGuide()
                .tabItem{
                    Button(action:{}){
                        Image(systemName: "cross.case.fill")
                        Text("Health Guide")
                    }
                }
            
            Homepage()
                .tabItem{
                    Button(action:{}){
                        Image(systemName: "leaf.fill")
                        Text("Home")
                    }
                }

            //Settings()
            Settings()
                .tabItem{
                    Button(action:{}){
                        Image(systemName: "person")
                        Text("Settings")
                    }
                }
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
