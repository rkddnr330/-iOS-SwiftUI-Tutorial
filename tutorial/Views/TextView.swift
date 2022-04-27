//
//  TextView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/26.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.system(size: 50, weight: .light, design: .serif))
            .foregroundColor(.cyonn)
            .bold()
        
            //modifier를 쓸 때 순서가 중요하다
            //순서에 따라 다른 결과가 나옴
            .background(.gray)
            .frame(width: 200, height: 200)
    }
}

//extension!
extension Color {
    static let cyonn = Color(red: 26/255, green: 232/255, blue:  212 / 255)
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
