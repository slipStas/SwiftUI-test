//
//  ContentView.swift
//  SwiftUI test
//
//  Created by Stanislav Slipchenko on 09.08.2019.
//  Copyright © 2019 Stanislav Slipchenko. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    var landmark : Landmark
    
    var body: some View {
        VStack {
            MapView(coordinate: landmark.locationCoordinate)
                .frame(height: 300)
                .edgesIgnoringSafeArea(.top)
            CircleImage(image: landmark.image)
                .offset(y: -130)
                .padding(.bottom, -130)

            VStack(alignment: .leading) {
                Text(landmark.name)
                    .font(.title)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[0])
    }
}
#endif
