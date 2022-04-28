//
//  StackView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/26.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack(alignment: .trailing, spacing: 10){
        //VStack의 기본 정렬은 중앙정렬
        //alignment : 정렬 수정
        //spacing : 하위 view 사이의 공간
            Text("Hello")
                .background(.green)
            Text("SwiftUI")
                .background(.yellow)
            Text("AWESOME")
                .background(.gray)
        }
        .font(.system(size: 50, weight: .bold, design: .serif))
        .foregroundColor(.pink)
        
        HStack(alignment: .bottom, spacing: 20){
            Text("Hello")
                .background(.green)
            Text("SwiftUI")
                .background(.yellow)
            Text("AWESOME")
                .background(.gray)
        }
        .font(.system(size: 40, weight: .bold, design: .serif))
        .foregroundColor(.pink)
        
        ZStack{
            Image("codershigh_profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            EditButton()
        }
        .frame(width: 300, height: 300)
        .clipShape(Circle())
    }
}

struct EditButton: View {
    var body: some View {
        VStack {
            Spacer()
             
            ZStack{
                Rectangle()
                    .fill(Color.black).opacity(0.6)
                    .frame(width: 300, height: 70)
                
                Text("편집")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                    .bold()
                    .padding()
            }
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
