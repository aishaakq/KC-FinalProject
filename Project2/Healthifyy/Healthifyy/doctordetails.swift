//
//  doctordetails.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 13/11/2022.
//

import SwiftUI

struct doctordetails: View {
    var detail: doctor
    var body: some View {
        ZStack{
            
            VStack{
                   
                ScrollView{
                    VStack{
                        HStack{
                            Image(detail.name)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 125, height: 125)
                                .clipShape(Circle())
                                .padding(3)
                            Text(detail.name)
                                .foregroundColor(Color(red: 0.017, green: 0.287, blue: 0.064))
                                .font(.system(size: 40))
                                .fontWeight(.bold)

                        }.frame(width: 350)
                    }
                    VStack{
                        Text("Academic Qualifications:")
                            .modifier(textfield2())
                            .padding()
                            
                        Text(detail.Academicqualifications)
                            .font(.title)
                            .foregroundColor(.gray)
                            .padding([.bottom], 32)
                    }
                    .frame(width: 370)
                    .background(Color(white: 0.824))
                    .cornerRadius(15)
                    .padding(10)
                    
                    VStack{
                        Text("Work:")
                            .modifier(textfield2())
                            .padding()
                            
                        Text(detail.Work)
                            .font(.title)
                            .foregroundColor(.gray)
                            .padding([.bottom], 32)
                    }
                    .frame(width: 370)
                    .background(Color(white: 0.824))
                    .cornerRadius(15)
                    .padding(10)
                    
                    VStack{
                        Text("Contact:")
                            .modifier(textfield2())
                            .padding()
                            
                        Text(detail.Contact)
                            .font(.title)
                            .foregroundColor(.gray)
                            .padding([.bottom], 32)
                    }
                    .frame(width: 370)
                    .background(Color(white: 0.824))
                    .cornerRadius(15)
                    .padding(10)
                    
                    VStack{
                        Text("Book your appointment:")
                            .modifier(textfield2())
                            .padding()
                            
                        Text(detail.RequestAppointments)
                            .font(.title)
                            .foregroundColor(.gray)
                            .padding([.bottom], 32)
                    }
                    .frame(width: 370)
                    .background(Color(white: 0.824))
                    .cornerRadius(15)
                    .padding(10)
                }
            }.background(
                Image("bk")
                    .ignoresSafeArea()
            )
        }.foregroundColor(.white)
            
    }
}

struct doctordetails_Previews: PreviewProvider {
    static var previews: some View {
        doctordetails(detail: doctor(name: "Heba Ben Salamah", Academicqualifications: "BSc in nutrition from OSU \nUSAMSc in Clinical nutrition from OHSU, USA", Work: "Royal Hayat Hospital", Contact: "n25360000", RequestAppointments: "25360000\n99369999"))
    }
}
