//
//  StaticListView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/29.
//

import SwiftUI

//List는 목록 형태의 View를 구현하기 위해 사용
//List에는 정적 List, 동적 List 두가지가 있다
//하는 역할은 동일하지만, List 내부에 따라 정적, 동적으로 구분된다

struct StaticListView: View {
    var body: some View {
        List{
            HStack{
                Text("Sunny")
                Spacer()
                Image(systemName: "sun.max")
                    .foregroundColor(.green)
            }
            
            HStack{
                Text("Rainy")
                Spacer()
                Image(systemName: "cloud.rain")
            }.foregroundColor(.red)
            
            HStack{
                Text("Cloudy")
                Spacer()
                Image(systemName: "smoke")
                    .foregroundColor(.green)
            }
            
            HStack{
                Text("Windy")
                Spacer()
                Image(systemName: "wind")
                    .foregroundColor(.green)
            }
            
            HStack{
                Text("Snowy")
                Spacer()
                Image(systemName: "snow")
                    .foregroundColor(.green)
            }
        }.font(.system(size: 18, weight: .bold, design: .rounded))
    }
}

struct StaticListView_Previews: PreviewProvider {
    static var previews: some View {
        StaticListView()
    }
}
