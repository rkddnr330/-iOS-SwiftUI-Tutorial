//
//  ForEachView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/29.
//

import SwiftUI

struct ForEachView: View {
    
    let imageList = ["airplayaudio","airplayvideo","airpods","airpodspro","applelogo"]
    
    var body: some View {
        
        //#1
        //기본적인 사용
        VStack(spacing:10){
            ForEach(0..<imageList.count)    //여기는 반복되는 횟수 또는 배열
            { index in                      //여기는 반복되는 View
                Image(systemName: imageList[index])
                    .padding(30)
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
                
            }
        }
        
        //#3
        //범위를 지정하지 않고 ForEach에 배열을 바로 넣는 방법
        VStack(spacing:10){
            ForEach(imageList, id: \.self){ index in
                Image(systemName: index)
                    .padding(30)
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
            }
        }
        
        //#2
        //index in을 사용하지 않고 $0 사용
        VStack(spacing:10){
            ForEach(imageList, id: \.self) {
                Image(systemName: $0)
                    .padding(30)
                    .foregroundColor(.yellow)
                    .font(.largeTitle)
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}
