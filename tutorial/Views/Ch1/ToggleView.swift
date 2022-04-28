//
//  ToggleView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/28.
//

import SwiftUI

//Value Selector란? 여러가지 값들 중 하나를 선택할 수 있는 control view
//Value Selector에는 toggle, slider, stepper, picker, DatePicker, ColorPicker 등이 있다.
//그 중 가장 많이 사용되는 Toggle, Picker에 대해 알아보자.

struct ToggleView: View {
    //Toggle : on/off 상태를 전환하는 control
    
    @State private var isToggle = false
    
    var body: some View {
        VStack {
            Text(isToggle ? "DARK MODE" : "LIGHT MODE")
                .foregroundColor(.pink)
                .padding()
                .font(.system(size: 40, weight: .bold, design: .serif))
                .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.pink, lineWidth: 5))
            
            //Bool ? A : B -> Bool값이 true이면 A, false이면 B 즉, isToggle이 true이면 Image(“dark_mode”) isToggle이 false이면 Image(“light_mode”)가 된다는 것을 의미
            Image(isToggle ? "dark_mode":"light_mode")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:400,height: 300)
            
            HStack{
            //Toggle은 Label, isOn으로 구성
                Toggle("Lable",isOn: $isToggle )
                    .labelsHidden()
                    .toggleStyle(SwitchToggleStyle(tint: .pink))
                
                Text(isToggle ? "ON" : "OFF")
                    .foregroundColor(.pink)
                    .font(.title)
                    .padding()
            }
                
        }
    }
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}
