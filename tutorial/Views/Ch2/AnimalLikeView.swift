//
//  AnimalLikeView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/05/03.
//

import SwiftUI

struct AnimalLikeView: View {
    
    var animalsInLike : [Animal] = animalsData
    
    var body: some View {
        NavigationView{
            //isLike == true인 놈들만 가져오려면 어디다가 어떤 속성을 걸어야 하나?
            //여기다가 filter를 쓴다
            List(animalsInLike.filter{$0.isLike == true}){ liked in
                HStack{
                    AnimalListView(animalsInList: liked)

                    Spacer()
//                    Button(action: {}, label: Image(systemName: "he"))
                    Image(systemName: "heart.fill")
                        .foregroundColor(.blue)
                }
            }
            .navigationBarTitle("Liked")
            
        }
    }
}

struct AnimalLikeView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalLikeView()
    }
}
