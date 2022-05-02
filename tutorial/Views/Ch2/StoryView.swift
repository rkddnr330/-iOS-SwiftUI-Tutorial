//
//  ScrollView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/05/02.
//

import SwiftUI

struct StoryView: View {
    let imageList = ["sv_1", "sv_2", "sv_3", "sv_4", "sv_1", "sv_2", "sv_3", "sv_4"]
    let textList = ["내 스토리", "Steven", "Danny", "Jenny", "Lisa", "Jun", "Justin", "Kate"]
    
    var body: some View {
        //소괄호 안 : 스크롤 방향, indicator 표시 여부
        //중괄호 안 : 보여주고자 하는 View
        ScrollView(.horizontal, showsIndicators: false){
            HStack(spacing:30){
                ForEach(0 ..< imageList.count) { index in
                    VStack(spacing:0){
                        Image(imageList[index])
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(15)
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 7))
                    
                        Text(textList[index])
                            .font(.title2)
                            .bold()
                            .padding(.vertical,20)
                    }
                }
            }
            .padding()
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}
