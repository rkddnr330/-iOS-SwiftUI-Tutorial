//
//  SpacerView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/29.
//

import SwiftUI

//Spacer : 주어진 공간 내에서 요소들이 전개되는 방향에 따라 유동적인 공백을 만들어주는 역할
//Divder : 시각적으로 요소들의 경계를 나타내는 역할
struct SpacerView: View {
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack(spacing:0){
                    Text("Genres + Moods")
                        .font(.system(size:30, weight: .bold, design: .rounded))
                    Spacer()
                    Text("View as list")
                        .font(.system(size:15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                }
                
                VStack(spacing:0){
                    HStack(spacing:0){
                        ZStack{
                            Image("hiphop")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Hip-Hop")
                                .font(.system(size:20, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        
                        Spacer().frame(height:30)
                        
                        
                        ZStack{
                            Image("pop")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Pop")
                                .font(.system(size:20, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        
                    }
                    
                    
                    HStack(spacing:0){
                        ZStack{
                            Image("rock")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Rock")
                                .font(.system(size:20, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        
                        
                        Spacer()
                        
                        ZStack{
                            Image("latin")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 180, height: 150)
                            
                            Text("Latin")
                                .font(.system(size:20, weight: .semibold, design: .rounded))
                                .foregroundColor(.white)
                        }
                        
                    }
                }
                
                
                
                Text("Podcasts")
                    .font(.system(size:30, weight: .bold, design: .rounded))
                
                Spacer()
                
                VStack(alignment: .leading){
                    
                    Text("Part 1: The National Day Show")
                        .font(.system(size:25, weight: .semibold, design: .rounded))
                    
                    Spacer()
                    
                    Text("Selamat bersuti semua. Kami nyanyikan kembali lagu-lagu yang dah biasa kita dengar dalam hari kebangsaan.")
                        .font(.system(size:15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                    
                    
                    Spacer()
                    HStack{
                        Image(systemName: "play.circle.fill")
                        Text("YESTERDAY - 2HR 24MIN")
                            .foregroundColor(.gray)
                        
                        Image(systemName: "arrow.down.circle")
                    }
                    .font(.system(size:20, weight: .semibold, design: .rounded))
                }
                
                
                Spacer().frame(height: 30)
                VStack(alignment: .leading){
                    
                    Text("Part 2: The National Day Show")
                        .font(.system(size:25, weight: .semibold, design: .rounded))
                    
                    
                    
                    Text("Selamat bersuti semua. Kami nyanyikan kembali lagu-lagu yang dah biasa kita dengar dalam hari kebangsaan.")
                        .font(.system(size:15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                    
                    
                    
                    HStack{
                        Image(systemName: "play.circle.fill")
                        Text("TODAY - 2HR 24MIN")
                            .foregroundColor(.gray)
                        
                        Image(systemName: "arrow.down.circle")
                    }
                    .font(.system(size:20, weight: .semibold, design: .rounded))
                }
            }
        }
        .padding()
    }
}

struct SpacerView_Previews: PreviewProvider {
    static var previews: some View {
        SpacerView()
    }
}
