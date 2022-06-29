//
//  HealthGuidePages.swift
//  Fufluns Posture
//
//  Created by James Yang on 6/21/22.
//
import SwiftUI

struct Case_0: View {
    
    let recColor = Color(red: 0.843, green: 0.922, blue: 0.831).opacity(1)
    let recColorPink = Color(red: 0.949, green: 0.863, blue: 0.914).opacity(1)
    
    
    var body: some View {
        VStack{ // Top of VSTack
            
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(recColor)
                        .frame(width: 230, height: 140)
                        .overlay(Group{
                            Text("Hi there! I'm ") +
                            Text("Fufluns").bold() +
                            Text(" the God of Plants, Health, and Growth. Here's a quick 7-step guide about text-neck for you!")
                        }.padding(.horizontal)
                                    .font(.custom("Avenir", size: 15))
                        )
                }
                Spacer()
                    .frame(width:20)
                Image("Health Guide 1- Fufluns 1")
                    .resizable()
                    .frame(width: 97.0, height: 140.0)
            }
            
            HStack{
                Image("Health Guide 1- Fufluns 2")
                    .resizable()
                    .frame(width: 130.0, height: 169.0)
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(recColorPink)
                        .frame(width: 220, height: 140)
                    Group{
                        Text("This is me")
                            .font(.custom("Avenir", size: 15)) +
                        Text(" looking down ").bold().font(.custom("Avenir", size: 15))  +
                        Text("at my phone. See how bent my neck and head is? Not very flattering right? :(") .font(.custom("Avenir", size: 15))
                    }.frame(width: 192, height: 108)
                    
                    
                        
                }
            
            }
        } //End of VStack
    }
}





struct Case_1 : View {
    
    let recColor = Color(red: 0.843, green: 0.922, blue: 0.831).opacity(1)
    let recColorPink = Color(red: 0.949, green: 0.863, blue: 0.914).opacity(1)
    let headerColor = Color(red: 0.341, green: 0.447, blue: 0.208).opacity(1)
    
    
    var body: some View {
        VStack{
            Image("Health Guide 2")
                .resizable()
                .frame(width: 100, height: 100)
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(recColor)
                    .frame(width: 350, height: 300)
                Group{
                    Text("What Is 'Text Neck'? \n").bold().foregroundColor(headerColor) +
                    Text("People spend approximately 5 hours a day on their phones, this prolonged use can lead to some serious pain. \n \n") +
                    Text("Text Neck Symptoms \n").bold().foregroundColor(headerColor) +
                    Text("By leaning the head forward for long periods, you may be putting yourself at risk of shoulder pain, poor posture, reduced mobility, alignment problems, headaches and other potential injuries in the future.")
                }.frame(width: 300, height: 300)
            }.offset(y:-10)
        }
    }
}



struct Case_2: View {
    
    let recColor = Color(red: 0.843, green: 0.922, blue: 0.831).opacity(1)
    let recColorPink = Color(red: 0.949, green: 0.863, blue: 0.914).opacity(1)
    let headerColor = Color(red: 0.341, green: 0.447, blue: 0.208).opacity(1)
    
    
    var body: some View{
        VStack{
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(recColor)
                        .frame(width: 350, height: 150)
                    HStack{
                        Image("Health Guide 3- Gasp")
                            .resizable()
                            .frame(width: 75, height: 95)
                        Group{
                            Text("Is This Me? \n").bold().foregroundColor(headerColor).font(.custom("Avenir", size: 15)) +
                            Text ("Take a moment to stay still. Self analyze your current posture. Which of the three poses below do you resemble the most?").font(.custom("Avenir", size: 15))
                        }.frame(width: 220, height: 170)
                    }
                }
            }
            
            HStack {Image("Health Guide 3- Neck Guide")
                    .resizable()
                    .frame(width: 370.0, height: 187.0)
            }
        }
    }
}


struct Case_3: View {
    
    let recColor = Color(red: 0.843, green: 0.922, blue: 0.831).opacity(1)
    let recColorPink = Color(red: 0.949, green: 0.863, blue: 0.914).opacity(1)
    let headerColor = Color(red: 0.341, green: 0.447, blue: 0.208).opacity(1)
    
    var body: some View{
        VStack{
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(recColor)
                        .frame(width: 350, height: 210)
                    HStack{
                        Group{
                            Text("Oh No, That Might Be Me :( \n").bold().foregroundColor(headerColor).font(.custom("Avenir", size: 15)) +
                            Text("Don’t worry, that includes us too. That’s what Fufluns is for! We’ll help guide and remind you to correct your head/neck posture. And slowly, with time and habit, your neck/head posture will improve!").font(.custom("Avenir", size: 15))
                        }.frame(width: 230, height: 200)
                        Image("Health Guide 4- My neck")
                            .resizable()
                            .frame(width: 88.0, height: 91.0)
                    }
                }
            }
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(recColorPink)
                    .frame(width: 350, height: 160)
                    
                HStack{
                    
                    Group{
                        Text("How To Hold Your Phone\n").bold().foregroundColor(headerColor).font(.custom("Avenir", size: 15)) +
                        Text("Move your phone up ").font(.custom("Avenir", size: 15)) +
                        Text("closer to eye level").bold().foregroundColor(headerColor).font(.custom("Avenir", size: 15)) +
                        Text("- like Fufluns on the right. This posture will decrease the head from tilting forward.").font(.custom("Avenir", size: 15))
                    }.frame(width: 200, height: 150)
                        .offset(x:-50)
                        
                }
                Image("Health Guide 4- Fufluns")
                .resizable()
                .frame(width: 120, height: 170)
                .offset(x:135)
            }
        }
    }
}



struct Case_4: View {
    
    let recColor = Color(red: 0.843, green: 0.922, blue: 0.831).opacity(1)
    let recColorPink = Color(red: 0.949, green: 0.863, blue: 0.914).opacity(1)
    let headerColor = Color(red: 0.341, green: 0.447, blue: 0.208).opacity(1)
    
    var body: some View{
       
            
            Image("Health Guide 5- Arm Ache boy")
                .resizable()
                .frame(width: 245, height: 75)
                .offset(x:-50)
            
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(recColor)
                    .frame(width: 360, height: 250)
                Group{
                    Text("My Arm Gets Very Tired/Uncomfortable.\n").bold().foregroundColor(headerColor).font(.custom("Avenir", size: 15)) +
                    Text("That is very common and normal! \n").font(.custom("Avenir", size: 15)) +
                    Text("Here are some of Fuflun’s tips: \n").font(.custom("Avenir", size: 15)) +
                    Text("• Use a desk’s surface or a pillow to prop up the arms for less pressure.\n").font(.custom("Avenir", size: 15)) +
                    Text("• Use both hands to hold the phone.\n").font(.custom("Avenir", size: 15)) +
                    Text("• Take regular breaks away from the phone to rest. \n").font(.custom("Avenir", size: 15)) +
                    Text("• It takes time to build this new habit, but the future you will appreciate it!").font(.custom("Avenir", size: 15))
                }.frame(width: 330, height: 250)
            }.offset(y:-9)
            
            Image("Health Guide 5- Ah...boy")
                .resizable()
                .frame(width: 185, height: 138)
                .offset(x:90, y:-60)
    }
}

struct Case_5: View{
    
    let recColor = Color(red: 0.843, green: 0.922, blue: 0.831).opacity(1)
    let recColorPink = Color(red: 0.949, green: 0.863, blue: 0.914).opacity(1)
    let headerColor = Color(red: 0.341, green: 0.447, blue: 0.208).opacity(1)
    
    var body: some View{
        
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(recColor)
                    .frame(width: 350, height: 220)
                Group{
                    Text("Simple Stretching Tips \n").bold().foregroundColor(headerColor).font(.custom("Avenir", size: 15)) +
                    Text("• Arch your neck back and look upwards for a few seconds. \n• Look up from your phone and face straight forward for a few seconds. \n• Roll your shoulders back. \n• Look left and right. \n• To keep a neutral spine, align your ears with your shoulders. ").font(.custom("Avenir", size: 15))
                }.frame(width: 330, height: 220)
            }
            Image("Health Guide 6- Simple Stretch boy")
              .resizable()
              .frame(width: 358, height: 153)
        }
    }
}


struct Case_6: View{
    
    let recColor = Color(red: 0.843, green: 0.922, blue: 0.831).opacity(1)
    let recColorPink = Color(red: 0.949, green: 0.863, blue: 0.914).opacity(1)
    let headerColor = Color(red: 0.341, green: 0.447, blue: 0.208).opacity(1)
    
    var body: some View{
        VStack{
            Spacer()
                .frame(height:70)
            Text("Ready to begin?")
                .bold()
                .foregroundColor(headerColor)
                .font(.custom("Avenir", size: 30))
                .offset(y:40)
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(recColorPink)
                        .frame(width: 250, height: 200)
                        .overlay(Group{
                            VStack{
                                Text("Every time Fufluns App notifies you, do any of the neck posture stretches to straighten yourself up (this grows your plant). \n").font(.custom("Avenir", size: 15))
                                
                                Text("With practice, your neck and head posture will improve over time!").font(.custom("Avenir", size: 15))
                            }
                    }.frame(width: 230, height: 200))
                }
                VStack{
                    Image("Health Guide 7- Notification up")
                        .resizable()
                        .frame(width: 112.0, height: 116.0)
                    Image("Health Guide 7- Phone")
                        .resizable()
                        .frame(width: 65.0, height: 117.0)
                }
            }
            
            HStack{
                Image("Health Guide 7- Look up boy")
                    .resizable()
                    .frame(width: 100.0, height: 100.0)
                Image("Health Guide 7- Notification side")
                    .resizable()
                    .frame(width: 121.0, height: 108.0)
                    .offset(x:-20,y:-20)
                Image("Health Guide 4- Fufluns")
                    .resizable()
                    .frame(width: 121.0, height: 208.0)
            }
            
        }.offset(y:-70)
    }
}



struct Case_0_Previews: PreviewProvider {
    static var previews: some View {
        Case_6()
    }
}
