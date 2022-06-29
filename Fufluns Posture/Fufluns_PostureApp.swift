//
//  Fufluns_PostureApp.swift
//  Fufluns Posture
//
//  Created by James Yang on 3/28/22.
//

import SwiftUI

@main
struct Fufluns_PostureApp: App {
    @StateObject var settings = NotificationDelegate()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(settings)
        }
    }
}
