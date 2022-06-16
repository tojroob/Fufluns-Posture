//
//  Homepage.swift
//  Fufluns Posture
//
//  Created by James Yang on 4/28/22.
//

import Foundation
import SwiftUI

struct Homepage: View {
    @ObservedObject var settings = NotificationDelegate()
    //@ObservedObject var settings = User()
    
    
    
    var body: some View {
        

            
        VStack{
            
            Text(settings.name == "" ? "Hello There (You)!" : "Hello \(settings.name)!")
            Button(action: {settings.createNotification();
            settings.notificationCompleteForDay()
            }
                   
            ) { //button creates notification, will eventually need to transition to timer
                Text("Notify User")
            }
            .onAppear {
                settings.requestAuthorization()
                
            }
            Text("Notification Interactions \(settings.notificationYesCounter) / \(settings.notificationMax)") //(settings.nOfNotifications) (delegate.notificationCounter)
            ProgressView(value: Float(settings.notificationYesCounter), total: Float(settings.notificationMax))
                .progressViewStyle(DefaultProgressViewStyle())
                .foregroundColor(Color.green)
                .frame(width: 313, height: 10)
            
            Image(settings.imagesArray[settings.imageCounter])
                .onAppear(perform: settings.notificationCompleteForDay)
        }
            
    }
}

struct Homepage_Previews: PreviewProvider {
    static var previews: some View {
        Homepage()
    }
}
