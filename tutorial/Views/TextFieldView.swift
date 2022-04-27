//
//  TextFieldView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/27.
//

import SwiftUI

struct TextFieldView: View {
    
    @State private var name: String = ""
    //변수 앞에 @State를 붙이는 이유
    //name 변수에 값 변동이 생기는 경우, 이를 감지하여 View를 다시 만들어 name변수가 사용된 모든 부분이 변경된 값이 적용될 수 있도록 함. 바로바로 수정!
    
    var body: some View {
        VStack{
            
            //각각 용어 알기!
            //TextField의 구성품 : placeholder, 변수 설정
            //변수명 name에 $가 붙는 이유 : 바인딩 표시 -> name변수의 양방향 통신을 위해
            TextField("What is your nane?", text:$name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                        
            Text("HI~ \(name)")
            
        }
        //TextField에서는 값을 가져오는 것 뿐만 아니라 변경까지 해야하므로 양방향성을 위해 name 앞에 $을 붙이는 것이고,
        //Text에서는 그냥 name을 가져오면 되기 때문에, $를 붙이지 않는다
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView()
    }
}
