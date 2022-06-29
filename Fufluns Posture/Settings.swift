//
//  Settings.swift
//  Fufluns Posture
//
//  Created by James Yang on 4/28/22.
//

import Foundation
import SwiftUI

struct Settings: View {
    //@ObservedObject var settings = NotificationDelegate()
    @EnvironmentObject var settings: NotificationDelegate
    //@ObservedObject var settings = User()
    //@AppStorage("name") var userName = settings.name
    
    
    var body: some View {
        
        VStack{
                //Text("Profile")
            HStack {
                Text("Name")
                TextField("Name", text: $settings.name)//this line breaks the code
                    .foregroundColor(Color.gray)
            }
            HStack {
                Text("Notifications Per Day")
                TextField("My Daily Target", value: $settings.notificationMax, formatter: NumberFormatter())//this line breaks the code
                    .foregroundColor(Color.gray)
            }
            
//            HStack{
//                Text("Time Period")
//                NavigationLink(destination: TimePeriodPicker()){
//                    Text(values.notificationStart, format:.dateTime.hour().minute())
//                        .foregroundColor(textColorB) +
//                    Text("  - ") +
//                    Text(values.notificationEnd, format:.dateTime.hour().minute())
//                        .foregroundColor(textColorB)
//                    Image(systemName: "chevron.forward")
//                        .foregroundColor(textColorB)
//                }
//            }
            
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
            .environmentObject(NotificationDelegate())
    }
}
