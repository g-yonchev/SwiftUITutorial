//
//  CircleImage.swift
//  Landmarks
//
//  Created by Zhoro on 11/25/25.
//

import SwiftUI

struct CircleImage: View {
    var image: Image
    var body: some View {
        image
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 8)
    }
}

#Preview {
    CircleImage(image: Image("turtlerock"))
}
