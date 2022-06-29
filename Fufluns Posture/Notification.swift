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
    
    @Published var notificationYesCounter: Int = 0
    @Published var name: String = ""
    @Published var notificationMax: Int = 2
    //@Published var nOfNotifications: Int = 0 // Value changes when user interacts app button (yes)
    @Published var startTime: Date = Calendar.current.date(bySettingHour: 8, minute: 0, second: 0, of: Date())!
    @Published var endTime: Date = Calendar.current.date(bySettingHour: 22, minute: 0, second: 0, of: Date())!
    
    @Published var imageCounter = 0
    @Published var imagesArray = ["Seedling1", "Sapling1", "Heart"]
    
    
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
        
        if (response.actionIdentifier == "Okay" && notificationYesCounter < notificationMax) { //logic goes here
            notificationYesCounter += 1
            print("counter is " + String(notificationYesCounter))
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
    
    func notificationCompleteForDay() {
        if (notificationYesCounter/notificationMax == 1 && imageCounter <= 1) {
            imageCounter += 1
            notificationYesCounter = 0
        }
    }
}

