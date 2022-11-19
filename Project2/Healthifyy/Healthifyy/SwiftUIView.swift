//
//  SwiftUIView.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 13/11/2022.
//

import SwiftUI

struct counter: View {
    @State var calories = ""
    @State var grams = ""
    @State var servings = ""
    
    @State var totalcal = ""
    var body: some View {
        
        ZStack{
            VStack {
                VStack{
                    HStack{
                        Text("Calorie Calculator")
                            .foregroundColor(Color(red: 0.017, green: 0.287, blue: 0.064))
                            .font(.system(size: 53))
                            .fontWeight(.bold)
                        Spacer()

                    }.frame(width: 350)
                }.padding([.bottom], 60)
                
                VStack{
                    
                    TextField("How many calories per serving?", text: $calories)
                        .modifier(textfield())
                    TextField("How many grams per serving?", text: $grams)
                        .modifier(textfield())
                    TextField("How many servings will you eat?", text: $servings)
                        .modifier(textfield())
                    
                    
                    
                    Button (action: {
                        Calculator(calories: Double(calories) ?? 1.0, grams: Double(grams) ?? 1.0, servings: Double(servings) ?? 1.0)
                    }, label: {
                        Text("Click me to calculate")
                    }).modifier(Healthifyy.button2())
                    
                    Text("Calories = \(totalcal)")
                        .modifier(Healthifyy.button2())
                    
                        

                    Text("*Please keep in mind that these calculations \nmight not be 100% accurate")
                        .multilineTextAlignment(.leading)
                        .padding([.top], 20)
                    
                }
                
                Spacer()
                 
            }
            .padding()
        }.background(
            Image("bk")
                .ignoresSafeArea()
        )
        
    }
    
    func Calculator(calories: Double, grams: Double, servings: Double){
        let total = round((calories * servings * grams) / grams)

        totalcal = "\(total)"
        
    }
}

struct counter_Previews: PreviewProvider {
    static var previews: some View {
        counter()
    }
}
