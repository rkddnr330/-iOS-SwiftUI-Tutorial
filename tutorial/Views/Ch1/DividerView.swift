//
//  DividerView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/29.
//

import SwiftUI

struct DividerView: View {
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
                
                Spacer().frame(height: 30)
                
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
                        
                        
                        Spacer()
                        
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
                    Spacer()
                    
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
                
                Rectangle()
                    .frame(height:1)
                    .foregroundColor(.red)
                
                Text("Podcasts")
                    .font(.system(size:30, weight: .bold, design: .rounded))
                
                Spacer().frame(height: 10)
                
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
                        Spacer()
                        Image(systemName: "arrow.down.circle")
                    }
                    .font(.system(size:20, weight: .semibold, design: .rounded))
                }
                
                Spacer().frame(height: 30)
                
                VStack(alignment: .leading){
                    
                    Text("Part 2: The National Day Show")
                        .font(.system(size:25, weight: .semibold, design: .rounded))
                    
                    Spacer()
                    
                    Text("Selamat bersuti semua. Kami nyanyikan kembali lagu-lagu yang dah biasa kita dengar dalam hari kebangsaan.")
                        .font(.system(size:15, weight: .semibold, design: .rounded))
                        .foregroundColor(.gray)
                    
                    Spacer()
                    
                    HStack{
                        Image(systemName: "play.circle.fill")
                        Text("TODAY - 2HR 24MIN")
                            .foregroundColor(.gray)
                        Spacer()
                        Image(systemName: "arrow.down.circle")
                    }
                    .font(.system(size:20, weight: .semibold, design: .rounded))
                }
            }
        }
        .padding()
    }
}
struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}
