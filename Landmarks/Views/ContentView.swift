//
//  ContentView.swift
//  Landmarks
//
//  Created by Zhoro on 11/25/25.
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
