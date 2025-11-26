//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Zhoro on 11/26/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        NavigationSplitView {
            List(landmarks) { landmark in
                NavigationLink {
                    LandmarkDetail()
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            ContentUnavailableView {
                Label("Select a Landmark", systemImage: "mountain.2.fill")
            }
        }
    }
}

#Preview {
    LandmarkList()
}
