//
//  CircleImage.swift
//  swift-ui-landmarks
//
//  Created by Waldron, Dustin on 10/3/20.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .resizable()
            .frame(width: 250.0, height: 250.0)
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 10)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(
            image: Image("turtlerock")
        )
    }
}
