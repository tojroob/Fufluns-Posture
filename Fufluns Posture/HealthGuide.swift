//
//  HealthGuide.swift
//  Fufluns Posture
//
//  Created by James Yang on 6/15/22.
//


import SwiftUI

struct HealthGuide: View {
    
    @EnvironmentObject var settings: NotificationDelegate
    
    //Colors
    let greenColorA :  Color = Color(red: 0.729, green: 0.946, blue: 0.829).opacity(1)
    let buttonInActiveColor = Color(red: 0.812, green: 0.906, blue: 0.961).opacity(0.2)
    let buttonISActive = Color(red: 0.812, green: 0.906, blue: 0.961).opacity(1)
    
    //Inpage Properties
    @State private var isPresented: Bool = false
    @State var selectedIndex = 0
    @State var activeButton = [true,false, false, false, false, false, false]
    
    
    var body: some View {
        NavigationView{
            ZStack{
                VStack{
                    greenColorA
                        .frame(width: 390, height: 89).ignoresSafeArea(edges: .top)
                    Color.white
                }
                
                HStack(alignment: .bottom){
                    ForEach(0..<7) { number in
                        Button(action:{
                            selectedIndex = number
                            for number in (0..<7){
                                if number == selectedIndex{
                                    activeButton[number] = true
                                } else {
                                    activeButton[number] = false
                                }
                            }
                        }){
                            Text("\(number + 1)")
                                .foregroundColor(.black)
                                .fontWeight(.bold)
                                .frame(width: 35, height: 35)
                                .background(activeButton[number] ? buttonISActive : buttonInActiveColor)  // Buttons
                                .clipShape(Circle())
                        }
                    }
                }.offset(y:-300)
                    
                
                    
                VStack{
                    
                    switch selectedIndex {
                    case 0:
                        Case_0()
                    case 1:
                        Case_1()
                    case 2:
                        Case_2()
                    case 3:
                        Case_3()
                    case 4:
                        Case_4()
                    case 5:
                        Case_5()
                    default:
                        Case_6()
                    }
                } // Health-Guide Images
                
                HStack{
                    switch selectedIndex {
                    case 0:
                        Spacer()
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.forward", method: goRight)
                    case 1:
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.backward",method: goLeft)
                        Spacer()
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.forward", method: goRight)
                    case 2:
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.backward",method: goLeft)
                        Spacer()
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.forward",method: goRight)
                    case 3:
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.backward",method: goLeft)
                        Spacer()
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.forward",method: goRight)
                    case 4:
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.backward",method: goLeft)
                        Spacer()
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.forward",method: goRight)
                    case 5:
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.backward",method: goLeft)
                        Spacer()
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.forward",method: goRight)
                    default:
                        CircleButton(buttonColor: buttonISActive, buttonDirection: "chevron.backward",
                                     method: goLeft)
                        Spacer()
                    }
              }.padding(.horizontal)
                
                
                
            }.navigationTitle("Health Guide")
                .navigationBarTitleDisplayMode(.inline)
        }// Navigation
        .navigationViewStyle(StackNavigationViewStyle()) //this line fixes console bugs
    }// var body
    
    func goRight () {
        if selectedIndex >= 0{
            selectedIndex += 1
            activeButton[selectedIndex] = true
            activeButton[selectedIndex-1] = false
        }
    }
    
    func goLeft () {
        if selectedIndex > 0 {
            selectedIndex -= 1
            activeButton[selectedIndex] = true
            activeButton[selectedIndex + 1] = false
        }
    }
    
    
} // End of Main Struct





struct CircleButton: View {
    let buttonColor:Color
    let buttonDirection:String
    let method: () -> Void
    

    
    var body: some View{
        Button(action:method){
            Circle()
                .frame(width: 62, height: 62)
                .foregroundColor(buttonColor)
                .overlay(Image(systemName: buttonDirection)
                            .foregroundColor(.black))
        }.offset(y:270)
    }
    
}


struct HealthGuide_Previews: PreviewProvider {
    static var previews: some View {
        HealthGuide()
    }
}
