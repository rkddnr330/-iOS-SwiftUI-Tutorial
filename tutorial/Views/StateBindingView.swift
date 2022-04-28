//
//  StateBindingView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/28.
//

import SwiftUI

struct StateBindingView: View {
    
    //@State
    //State는 SwiftUI에 의해 관리되는 값을 읽고 쓸 수 있는 property wrapper의 유형
    //'@State'를 변수 앞에 추가하면, SwiftUI가 자동으로 변경사항을 체크하고 해당 변수를 사용하는 view 부분을 업데이트

    @State private var isPlaying = false
    
    @Environment(\.colorScheme) var colorScheme
    @State private var progress: Double = 65.0
    @State private var time: Int = 188
    @State var timer = Timer.publish (every: 1, on: .current, in: .common).autoconnect()
    
    var body: some View{
        VStack {
            HStack{
                Image(uiImage: (UIImage(named: "music.png")!))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
                Image(uiImage: (UIImage(named: colorScheme == .dark ? "music_text.png" : "music_text_light.png")!))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 100)
            }
            VStack{
                ProgressView("", value: progress, total: 188)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color.pink))
                
                HStack{
                    Text("\(Int(progress)/60):\(String(format: "%02d", Int(progress)%60))")
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text("\(time/60):\(String(format: "%02d", time%60))")
                        .fontWeight(.bold)
                }
            }
            .frame(width: 350)
            .padding()
            
            HStack(spacing: 50){
                Image(systemName: "backward.fill")
                
                Button(action: {
                    self.isPlaying.toggle()
                    //클릭할 때 isPlaying이 true면 false로
                    //false면 true로 바꿔줘야 하기 때문에 toggle()
                }) {                                //sf symbol image들
                    Image(systemName: isPlaying ? "pause.fill":"play.fill")
                                              //isPlaying이 true -> pause.fill
                                              //isPlaying이 false -> play.fill
                        .foregroundColor(.pink)
                        .frame(width: 50, height: 50)
                }
                
                Image(systemName: "forward.fill")
            }
            .font(.system(size: 40))
        }
        .onReceive(timer) { _ in
            if isPlaying && self.progress < 188 {
                self.progress += 1
            }
        }
    }
}

struct StateBindingView_Previews: PreviewProvider {
    static var previews: some View {
        StateBindingView()
    }
}
