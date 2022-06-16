//
//  Settings.swift
//  Fufluns Posture
//
//  Created by James Yang on 4/28/22.
//

import Foundation
import SwiftUI

struct Settings: View {
    @ObservedObject var settings = NotificationDelegate()
    //@ObservedObject var settings = User()
    
    
    
    var body: some View {
        
        VStack{
            Section {
                //Text("Profile")
                HStack {
                    Text("Name")
                    //TextField("Your Name", text: $settings.name)//i think this line breaks the code
                        .foregroundColor(Color.gray)
                }
            }
            
            
            
        }
    }
}

struct Settings_Previews: PreviewProvider {
    static var previews: some View {
        Settings()
    }
}
