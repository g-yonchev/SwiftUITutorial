//
//  ContentView.swift
//  WatchLandmarksApp Watch App
//
//  Created by Zhoro on 11/26/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView().environment(ModelData())
}
