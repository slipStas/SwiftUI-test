//
//  LandmarkList.swift
//  SwiftUI test
//
//  Created by Stanislav Slipchenko on 09.08.2019.
//  Copyright © 2019 Stanislav Slipchenko. All rights reserved.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var showFavoritesOnly = false
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                ForEach(landmarkData) { landmark in
                if !self.showFavoritesOnly || landmark.isFavorite {
                    NavigationLink(destination: ContentView(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                        }
                    }
                }
            }
        .navigationBarTitle(Text("Landmarks"))
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
