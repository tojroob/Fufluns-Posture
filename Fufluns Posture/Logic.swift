//
//  Logic.swift
//  Fufluns Posture
//
//  Created by Daps Owolabi on 2022-03-28.
//

import SwiftUI
import UserNotifications

class User: ObservableObject {
    
  
    
    @Published var name: String = "Hello User"
    @Published var notificationcount: Int = 5
    @Published var nOfNotifications: Int = 0 // Value changes when user interacts app button (yes)
    @Published var startTime: Date = Calendar.current.date(bySettingHour: 8, minute: 0, second: 0, of: Date())!
    @Published var endTime: Date = Calendar.current.date(bySettingHour: 22, minute: 0, second: 0, of: Date())!
    
    
    init (count: Int) {
        self.notificationcount = count
    }
    
    
}
