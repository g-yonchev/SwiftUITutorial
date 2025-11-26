//
//  LandmarkList.swift
//  SwiftUITutorial
//
//  Created by Zhoro on 11/26/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            LandmarkRow(landmark: landmark)
        }
    }
}

#Preview {
    LandmarkList()
}
