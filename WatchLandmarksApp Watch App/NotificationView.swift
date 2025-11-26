//
//  NotificationView.swift
//  WatchLandmarksApp Watch App
//
//  Created by Zhoro on 11/26/25.
//

import SwiftUI

struct NotificationView: View {
    var title: String?
    var message: String?
    var landmark: Landmark?

    var body: some View {
        VStack {
            if let landmark {
                CircleImage(image: landmark.image.resizable())
                    .scaledToFit()
            }


            Text(title ?? "Unknown Landmark")
                .font(.headline)


            Divider()


            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
        }
    }
}

#Preview {
    let landmark = ModelData().landmarks[2]
    return NotificationView(
        title: landmark.name,
        message: "You are within 5 miles of \(landmark.name)",
        landmark: landmark
    )
}
