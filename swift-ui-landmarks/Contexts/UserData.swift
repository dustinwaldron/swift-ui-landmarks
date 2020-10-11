//
//  UserData.swift
//  swift-ui-landmarks
//
//  Created by Waldron, Dustin on 10/10/20.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var showFavoritesOnly = false
    @Published var landmarks = landmarkData
    
}
