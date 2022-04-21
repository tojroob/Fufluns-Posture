//
//  ContentView.swift
//  Fufluns Posture
//
//  Created by James Yang on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var delegate = NotificationDelegate()
    @StateObject var settings = User(count: 10)//for now, init with hard coded five, when user sets their settings, replace hard code 10
    
    var body: some View {
        VStack{
            Text(settings.name)
            Button(action: delegate.createNotification) { //button creates notification, will eventually need to transition to timer
                Text("Notify User")
            }
            .onAppear {
                delegate.requestAuthorization()
            }
            Text("Notification Interactions \(delegate.notificationCounter) / \(settings.notificationcount)")
            ProgressView(value: Float(delegate.notificationCounter), total: Float(10)) 
                .progressViewStyle(DefaultProgressViewStyle())
                .foregroundColor(Color.green)
                .frame(width: 313, height: 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
