//
//  AnimalTabView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/05/03.
//

import SwiftUI

struct AnimalTabView: View {
    var body: some View {
        TabView {
            AnimalMainView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Main")
                }
        
            AnimalLikeView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Like")
                }
        }
    }
}

struct AnimalTabView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalTabView()
    }
}
