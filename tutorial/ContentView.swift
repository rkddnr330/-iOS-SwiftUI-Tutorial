//
//  ContentView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.system(size: 50, weight: .light, design: .serif))
            .foregroundColor(.cyon)
            .bold()
        
            //modifier를 쓸 때 순서가 중요하다
            //순서에 따라 다른 결과가 나옴
            .background(.gray)
            .frame(width: 200, height: 200)
        
            
    }
}

//extension!
extension Color {
    static let cyon = Color(red: 26/255, green: 232/255, blue:  212 / 255)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
