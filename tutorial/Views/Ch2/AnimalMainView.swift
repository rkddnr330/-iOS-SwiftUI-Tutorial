//
//  AnimalMainView.swift
//  tutorial
//
//  Created by Park Kangwook on 2022/05/03.
//

import SwiftUI

struct AnimalMainView: View {
    
    var animalsInView = animalsData
    
    var body: some View {
        NavigationView{
            List(animalsInView){ each in
                NavigationLink(destination:AnimalDetailView(animalsInDetail: each)){
                    AnimalListView(animalsInList: each)
                }
            }
            .navigationBarTitle("Animals")
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}


struct AnimalMainView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalMainView()
    }
}
