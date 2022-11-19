//
//  test.swift
//  Healthifyy
//
//  Created by Aisha AlQabandi on 19/11/2022.
//

import SwiftUI

enum Tab: String, CaseIterable{
    case house
    case stethoscope
    case plus
    case pin
}

struct test: View {
    @Binding var selectedTab: Tab
    private var fillImage: String {
        selectedTab.rawValue + ".circle.fill"
    }
    var body: some View {
        VStack{
            HStack{
                ForEach(Tab.allCases, id: \.rawValue) { tab in
                    Spacer()
                    Image(systemName: selectedTab == tab ? fillImage : tab.rawValue)
                        .scaleEffect(selectedTab == tab ? 1.25 : 1.0)
                        .foregroundColor(selectedTab == tab ? .black : .gray)
                        .font(.system(size: 22))
                        .onTapGesture {
                            withAnimation(.easeIn(duration: 0.1)) {
                                selectedTab = tab
                            }
                        }
                    Spacer()
                }
            }
            .frame(width: nil, height: 68)
            .background(.thinMaterial)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct test_Previews: PreviewProvider {
    static var previews: some View {
        test(selectedTab: .constant(.house))
    }
}
