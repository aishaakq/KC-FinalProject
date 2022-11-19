//
//  home.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 15/11/2022.
//

import SwiftUI


struct home: View {
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("lightgreen"))
    }
    
    
    
    var body: some View {
        
            ZStack{
                TabView {
                    
                    VStack{
                        home2()
                        
                    }.tabItem{
                        VStack{
                            Image(systemName: "house")
                        }
                    }
                    
                    VStack{
                        doctors()
                    }.tabItem {
                        VStack{
                            Image(systemName: "stethoscope")
                        }
                        }



                    VStack{
                        counter()
                    }
                        .tabItem {
                            VStack{
                                Image(systemName: "plus")
                            }

                        }

                    VStack{
                        YourViewControllerView()
                    }
                        .tabItem {
                            VStack{
                                Image(systemName: "pin")
                            }

                        }

                }.accentColor(.green)
                .onAppear() {
                    UITabBar.appearance().barTintColor = .lightGray
                        }
            }
            
            
    }
    }

struct home_Previews: PreviewProvider {
    static var previews: some View {
        home()
    }
}

