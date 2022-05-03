//
//  AnimalListView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/05/03.
//

import SwiftUI

struct AnimalListView: View {
    
    var animalsInList: Animal
    
    var body: some View {
        HStack{
            Image(animalsInList.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .cornerRadius(8)
            
            VStack(alignment:.leading, spacing: 5){
                Text(animalsInList.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(animalsInList.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
                    .lineLimit(2)
                    //2번째 줄 넘는 글자 짤라!
            }.padding(.vertical,4)
        }
    }
}
