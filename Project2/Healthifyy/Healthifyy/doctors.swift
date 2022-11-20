//
//  doctors.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 13/11/2022.
//

import SwiftUI

struct doctors: View {
    @State private var searchText = ""
    var body: some View {
        ZStack{
            

            VStack{
                HStack{
                    Text("Find Nutritionists")
                        .foregroundColor(.white)
                        .font(.system(size: 53))
                        .fontWeight(.bold)
                    Spacer()

                }.frame(width: 350)
                
                List(doctorcimplete) { m in
                    NavigationLink {
                        doctordetails(detail: m)
                    } label: {
                        ExtractedView(doctorss: m)
                            .shadow(color: Color.black.opacity(0.3),radius: 10, x:0, y:15)
                    }
                    }.scrollContentBackground(.hidden)
                    .accentColor(.clear)
            }
        
        }.background{
            Image("bk")}
        
        
        
        }
    
    }
            
        
        


struct doctors_Previews: PreviewProvider {
    static var previews: some View {
        doctors()
    }
}

struct ExtractedView: View {
    var doctorss: doctor
    var body: some View {
        HStack{
            Image(doctorss.name)
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 100, height: 100)
            Text(doctorss.name)
                .font(.title2)
                .fontWeight(.bold)
        }
    }
}
