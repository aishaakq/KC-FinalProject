//
//  home2.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 18/11/2022.
//

import SwiftUI

struct home2: View {
    var body: some View {
        VStack{
            Text("Welcome to")
                .foregroundColor(.white)
                .font(.system(size: 60))
            
            Text("Healthify")
                .foregroundColor(.white)
                .fontWeight(.bold)
                .font(.system(size: 72))
                .padding([.bottom], 15)
            
            Text("Your #1 stop for all your fitness needs")
                .font(.system(size: 17))
                .foregroundColor(.white)
        }
        .frame(width: 350)
        .background{
            Image("bk")
        }

    }
}

struct home2_Previews: PreviewProvider {
    static var previews: some View {
        home2()
    }
}
