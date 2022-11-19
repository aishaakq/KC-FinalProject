//
//  ContentView.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 13/11/2022.
//

import SwiftUI
import GoogleMaps

struct ContentView: View {
    
    let healthgreen = Color( "healthgreen")
    
    var body: some View {
        
        NavigationView{
            NavigationLink{
                home()
            } label: {
                ZStack{
                    Image("logo2")
                        .resizable()
                        .scaledToFit().padding(35)
                }.background{
                    Image("bk")}
            }
        }.accentColor(Color.white)
        

    }
    
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct button: ViewModifier{
    func body( content: Content) -> some View{
        content
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.017, green: 0.287, blue: 0.064))
            .frame(width: 350, height: 80)
            .background(Color(white: 0.824))
            .cornerRadius(30)
            .padding()
    }
}



struct textfield: ViewModifier{
    func body( content: Content) -> some View{
        content
            .multilineTextAlignment(.center)
            .font(.title2)
            .frame(width: 350, height: 35)
            .background(Color(white: 0.824))
            .cornerRadius(10)
    }
}

struct textfield2: ViewModifier{
    func body( content: Content) -> some View{
        content
            .multilineTextAlignment(.center)
            .foregroundColor(Color(red: 0.017, green: 0.287, blue: 0.064))
            .frame(width: 350)
            .font(.title)
            .fontWeight(.bold)
        
    }
}

struct button2: ViewModifier{
    func body( content: Content) -> some View{
        content
            .font(.title)
            .fontWeight(.bold)
            .foregroundColor(Color(red: 0.017, green: 0.287, blue: 0.064))
            .frame(width: 350, height: 80)
            .background(Color(white: 0.824))
            .cornerRadius(10)
    }
}


struct YourViewControllerView: UIViewControllerRepresentable {

    func makeUIViewController(context: Context) -> ViewController {
        // this will work if you are not using Storyboards at all.
        return ViewController()
    }

    func updateUIViewController(_ uiViewController: ViewController, context: Context) {
        // update code
    }

}




