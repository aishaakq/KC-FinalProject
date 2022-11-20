//
//  SwiftUIView.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 13/11/2022.
//

import SwiftUI

struct counter: View {
    @State var calories = ""
    @State var servings = ""
    @State var calories2 = ""
    @State var servings2 = ""
    @State var goal = ""
    @State var goalmet = ""
    @State var totalcal = ""
    @State var goalmet2 = ""
    
    var body: some View {
        
        ZStack{
            VStack {
                VStack{
                    HStack{
                        Text("Calorie Calculator")
                            .foregroundColor(.white)
                            .font(.system(size: 53))
                            .fontWeight(.bold)
                        Spacer()

                    }.frame(width: 350)
                }.padding([.bottom], 60)
                
                ScrollView{
                    VStack{
                        
                        Group{
                            TextField("Today's calorie count goal?", text: $goal)
                                .modifier(textfield())
                            
                            
                            Text("Food Item #1")
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(.white)
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                            
                            TextField("How many calories per serving?", text: $calories)
                                .modifier(textfield())
                        }
                        
                       
                        
                        TextField("How many servings will you eat?", text: $servings)
                            .modifier(textfield())
                        
                        Text("Food Item #2")
                            .multilineTextAlignment(.trailing)
                            .foregroundColor(.white)
                            .font(.system(size: 30))
                            .fontWeight(.bold)
                            
                        
                        TextField("How many calories per serving?", text: $calories2)
                            .modifier(textfield())
                        
                        TextField("How many servings will you eat?", text: $servings2)
                            .modifier(textfield())
                            .padding([.bottom], 19)
                        
                        
                        Button (action: {
                            Calculator(calories: Double(calories) ?? 1.0, servings: Double(servings) ?? 1.0, calories2: Double(calories2) ?? 1.0, servings2: Double(servings2) ?? 1.0)
                            Calculator2(goalcalories: Double(goal) ?? 1.0, eaten: Double(totalcal) ?? 1.0)

                        }, label: {
                            Text("Calculate")
                        }).modifier(Healthifyy.button2())
                        
                        Text("Calories = \(totalcal)")
                            .modifier(Healthifyy.button2())
                        
                        
                        Text("\(goalmet2)% calorie intake")
                            .modifier(Healthifyy.button2())

                        Text("*calculations might not be 100% accurate*")
                            .multilineTextAlignment(.leading)
                            .padding([.top], 20)
                        
                    }
                }
                
                Spacer()
                 
            }
            .padding()
        }.background(
            Image("bk")
                .ignoresSafeArea()
        )
        
    }
    
    func Calculator(calories: Double, servings: Double, calories2: Double, servings2: Double){
        let total = round(calories * servings + calories2 * servings2)

        totalcal = "\(total)"
        
    }
    
    func Calculator2(goalcalories: Double, eaten: Double){
        let goalmet = round(eaten/goalcalories * 100)
        goalmet2 = "\(goalmet)"
    }
}

struct counter_Previews: PreviewProvider {
    static var previews: some View {
        counter()
    }
}
