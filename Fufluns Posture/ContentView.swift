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
        
        VStack{
            
            Text(settings.name)
            Button(action: settings.createNotification) { //button creates notification, will eventually need to transition to timer
                Text("Notify User")
            }
            .onAppear {
                settings.requestAuthorization()
                
            }
            Text("Notification Interactions \(settings.notificationYesCounter) / \(settings.notificationMax)") //(settings.nOfNotifications) (delegate.notificationCounter)
            ProgressView(value: Float(settings.notificationYesCounter), total: Float(10))
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
