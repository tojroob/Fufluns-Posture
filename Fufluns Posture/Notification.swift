//
//  Notification.swift
//  Fufluns Posture
//
//  Created by James Yang on 4/20/22.
//

import Foundation
import SwiftUI
import UserNotifications



class NotificationDelegate: NSObject, ObservableObject, UNUserNotificationCenterDelegate {
    
    @Published var notificationYesCounter = 0
    @Published var name: String = "Hello User"
    @Published var notificationMax: Int = 10
    //@Published var nOfNotifications: Int = 0 // Value changes when user interacts app button (yes)
    @Published var startTime: Date = Calendar.current.date(bySettingHour: 8, minute: 0, second: 0, of: Date())!
    @Published var endTime: Date = Calendar.current.date(bySettingHour: 22, minute: 0, second: 0, of: Date())!
    
    override init() {
        super.init()
        UNUserNotificationCenter.current().delegate = self
    }
    
    func requestAuthorization() {
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.badge,.sound]) {(_,_) in
        }
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        completionHandler([.badge, .banner, .sound])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        
        if response.actionIdentifier == "Okay" { //logic goes here
            
            print("counter is " + String(notificationYesCounter))
            notificationYesCounter += 1
            //notificationCount += 1
        }
        completionHandler()
    }
    
    func createNotification() {
        let content = UNMutableNotificationContent()
        content.title = "God of Posture"
        content.subtitle = "Straighten Your Neck"
        content.categoryIdentifier = "Actions"
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 4, repeats: false)
        let request = UNNotificationRequest(identifier: "In-App", content: content, trigger: trigger)
        
        //notification actions
        let close = UNNotificationAction(identifier: "Close", title: "Close", options: .destructive)
        let okay = UNNotificationAction(identifier: "Okay", title: "Okay", options: .destructive)
        let category = UNNotificationCategory(identifier: "Actions", actions: [close, okay], intentIdentifiers: [], options: [])
        
        UNUserNotificationCenter.current().setNotificationCategories([category])
        
        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
    }
}

