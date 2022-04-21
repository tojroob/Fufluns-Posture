//
//  ContentView.swift
//  Fufluns Posture
//
//  Created by James Yang on 3/28/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var delegate = NotificationDelegate()
    
    var body: some View {
        VStack{
            Button(action: delegate.createNotification) {
                Text("Notify User")
            }
            .onAppear {
                delegate.requestAuthorization()
            }
            Text("Notification Interactions \(delegate.notificationCounter)")
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
