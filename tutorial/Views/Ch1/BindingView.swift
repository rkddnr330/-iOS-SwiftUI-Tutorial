//
//  BindingView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/28.
//

import SwiftUI

//@State는 하나의 View struct 내부에서 하나의 변수가 여러 View(하위 View)에서도 공유되고, 값의 변화에 영향을 받는 경우 사용된다
//그렇다면 두개의 View struct에서 하나의 변수 값을 공유하려면 어떻게 해야 하나? == 'Binding'

struct BindingView: View {
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
                
                PlayButton(isPlaying: $isPlaying)
                //PlayButton의 Binding인 isPlaying에 뭘 연결해줄건지 알려줘야 한다
                //이는 PlayButton의 isPlaying으로 BindingView의 isPlaying을 넣어준다는 의미
                //그리고 PlayButton에서 toggle된 isPlaying 값이 BindingView에도 반영되어야 하므로 isPlaying앞에 $를 붙인다.
                
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

//PlayButton이라는 새로운 View Struct
struct PlayButton: View {
    
    //위에서 isPlaying이라는 변수를 State를 통해 선언했다
    //하지만 위의 'BindingView' struct에서만 사용할 수 있다
    //여기 'PlayButton' view struct에서도 사용하기 위해
    //@Binding을 통해 연결해준다
    
    //@Binding을 통해 View들간의 양방향 연결이 가능해진다
    @Binding var isPlaying : Bool
    
    var body: some View {
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
    }
}

struct BindingView_Previews: PreviewProvider {
    static var previews: some View {
        BindingView()
    }
}
