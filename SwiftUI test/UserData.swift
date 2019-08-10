//
//  UserData.swift
//  SwiftUI test
//
//  Created by Stanislav Slipchenko on 10.08.2019.
//  Copyright © 2019 Stanislav Slipchenko. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    
    @Published var showFavoritesOnly = true
    @Published var landmarks = landmarkData
    
}








