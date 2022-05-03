//
//  AnimalDetailView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/05/03.
//

import SwiftUI

struct AnimalDetailView: View {
    var animalsInDetail: Animal
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing:20){
                Image(animalsInDetail.image)
                
                VStack(alignment:.leading, spacing: 20){
                    
                    HStack{
                        Text("\(animalsInDetail.title)")
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Spacer()
                        
                        Button(action:{
                        
                        }, label: {
                            Image(systemName: animalsInDetail.isLike ? "heart.fill" : "heart")
                        })

                    }
                    
                    Text(animalsInDetail.headline)
                        .font(.headline)
                    
                    Text("Learn more about \(animalsInDetail.title)".uppercased())
                        .fontWeight(.bold)
                    
                    Text(animalsInDetail.description)
                }
                .padding(.horizontal, 20)
            }
            .padding(.top, 100)
        }
        .edgesIgnoringSafeArea(.top)
    }
}
