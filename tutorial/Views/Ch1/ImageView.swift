//
//  ImageView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/26.
//

import SwiftUI

struct ImageView: View {
    var body: some View {
        VStack{
        Image("profile")
        //image 크기 조절하는 modifier : .resizable()
            .resizable()
            .aspectRatio(contentMode: .fill)
            //image 크기 조절할 때 가장 중요한 거 : 비율 유지
            //이를 위해 쓰이는 modifier가 .aspectRatio
        
            .frame(width: 300, height: 300)
            //image에다가 frame modifier를 쓰니까 안먹는다
            //resizable modifier를 적용시킨 뒤 frame 코드를 쓰니까 적용됨
            //resizable 쓴다 == image 크기 조정할 준비가 됐다!
        
            .clipShape(RoundedRectangle(cornerRadius: 60))
            //image 형태를 설정하는 modifier
            //shape type : Capsule, Circle, Ellipse, Rectangle, RoundedRectangle 등이 있다.
        
            .overlay(RoundedRectangle(cornerRadius: 60).stroke(Color.gray, lineWidth: 10))
            //외곽선 주는 modifier
            //어떤 모양일지 : RoundedRectangle (이때는 이 모양으로 색이 꽉 채워짐)
            //.stroke를 줘야 외곽선만 나타난다
            
            Image(systemName: "person.circle")
            //이거는 apple에서 제공하는 SF Symbol
            //Apple 플랫폼용 시스템 글꼴인 SanFrancisco와 원활하게 통합되도록 설계된 symbol
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 300)
                
    }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
