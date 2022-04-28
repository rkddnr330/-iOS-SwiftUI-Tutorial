//
//  PickerView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/29.
//

import SwiftUI

//Picker
//여러가지 항목들 중 어떤 것을 선택했는지 표시하는 control
//선택된 값을 가지는 변수는 @State로 정의해서 사용

struct PickerView: View {
    @State private var selectedFlavor = Flavor.Chocolate //초기값을 설정해줌
    
    var body: some View {
        VStack {
                                //선택한 binding 값을 selection으로 지정해준다b
            Picker("Flavorrr",selection: $selectedFlavor){
                Text("Chocolate").tag(Flavor.Chocolate)
                Text("Vanila").tag(Flavor.Vanila)
                Text("Strawberry").tag(Flavor.Strawberry)
                Text("MintChocolate").tag(Flavor.MintChocolate)
                //각각의 선택지에 tag가 붙는다. 이것이 밑의 enum과 연결시켜준다
            }
            .pickerStyle(.segmented)
            
            Text("선택한 맛 : \(selectedFlavor.rawValue)")
                .font(.largeTitle)
                .foregroundColor(.pink)
        }
    }
}

//Picker를 통해 선택할 수 있는 값들을 enum을 사용해 열거형으로 만들어줌
enum Flavor: String{
    case Chocolate
    case Vanila
    case Strawberry
    case MintChocolate
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}
