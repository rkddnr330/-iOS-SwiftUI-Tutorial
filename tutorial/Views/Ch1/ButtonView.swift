//
//  ButtonView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/27.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button(action: {
            //버튼 클릭시 실행되는 코드
            print("버튼 클릭")
        }) {
            //버튼의 보여지는 UI코드
            HStack{
                Text("Log in")
                
                Image(systemName: "arrow.right.circle")
            }
        }
        .buttonStyle(MyButtonStyle())
    }
}

//재사용이 가능한 Button Style
//Button의 경우 통일되는 style이 자주 사용되는 경우가 많다
//각각의 코드에 계속 같은 코드를 붙이는 것은 코드가 깔끔하지 않고, 유지보수성이 떨어진다
//그런 경우 ButtonStyle을 따로 만들어서 적용한다

struct MyButtonStyle: ButtonStyle{
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.system(size: 30, weight: .bold, design: .rounded))
            .foregroundColor(.white)
            .padding()
            .background(Color.pink)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.pink, lineWidth: 5))  //테두리 만드는 거 : overlay
    }

}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
