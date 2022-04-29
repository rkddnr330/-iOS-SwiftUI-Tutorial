//
//  DynamicListView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/29.
//

import SwiftUI

//Dynamic List는 Static List보다 효율적인 요소 나열 가능
//하나하나의 컨텐츠를 넣지 않고, 배열을 사용하여 배열의 요소를 List로 보여줄 수 있음
//보다 복잡한 요소들 나열할 때 Dynamic List 사용

struct DynamicListView: View {

    var body: some View {
        List(playlists){ list in
            CardView(list: list)
        }
        .listStyle(SidebarListStyle())
    }
}

struct CardView: View {
    
    var list: Playlist
    
    var body: some View {
        VStack(spacing:0){
            Image(list.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 150, height: 100)
            
            VStack(alignment:.leading){
                HStack{
                    Text(list.title)
                        .bold()
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .font(.title2)
                
                Text(list.name)
                    .font(.caption)
                
                HStack{
                    ProgressView(value:list.percent, total:1.0)
                        .progressViewStyle(LinearProgressViewStyle(tint: Color.yellow))
                        .frame(height: 10)
                    
                    Text("\(Int( list.percent*100))%")
                        .font(.caption)
                }
            }
            .padding()
        }
        .padding()
        .background(Color.black)
        .foregroundColor(Color.white)
        .cornerRadius(15)
    }
}

let playlists = [
    Playlist(title: "간단한 게임으로 코딩", name: "스위프트 하이", percent: 0.2, imageName: "dl_1"),
    Playlist(title: "포털타고 순간이동", name: "스위프트 하이", percent: 0.4, imageName: "dl_2"),
    Playlist(title: "숨은 버그 찾기", name: "스위프트 하이", percent: 0.5, imageName: "dl_3"),
    Playlist(title: "함수란 신발끈", name: "스위프트 하이", percent: 0.1, imageName: "dl_4")
]
struct Playlist: Identifiable {
    let id = UUID()
    let title : String
    let name: String
    let percent: Double
    let imageName: String
}
struct DynamicListView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListView()
    }
}
