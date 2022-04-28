//
//  CustomPickerView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/04/29.
//

import SwiftUI

struct CustomPickerView: View {
    @State private var selectedFlavor = Flavor.Chocolate
    var body: some View {
        Menu {
            Picker(selection: $selectedFlavor, label: EmptyView()){
                Text("Chocolate").tag(Flavor.Chocolate)
                Text("Vanila").tag(Flavor.Vanila)
                Text("Strawberry").tag(Flavor.Strawberry)
                Text("MintChocolate").tag(Flavor.MintChocolate)
            }
        } label: { //label 부분에 원하는 Picker모양을 넣어주면 해당 모양으로 custom된 Picker가 만들어짐
                HStack(spacing:5) {
                    Text(selectedFlavor.rawValue)
                        .font(.system(size: 30, weight: .bold, design: .rounded))
                    Image(systemName: "chevron.up")
                        .font(.system(size: 20, weight: .medium, design: .rounded))
                }
                .foregroundColor(.black)
                .padding(.horizontal)
                
            }
        }
    }


struct CustomPickerView_Previews: PreviewProvider {
    static var previews: some View {
        CustomPickerView()
    }
}
