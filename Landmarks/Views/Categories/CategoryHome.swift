//
//  CategoryHome.swift
//  Landmarks
//
//  Created by Zhoro on 11/26/25.
//

import SwiftUI

struct CategoryHome: View {
    @Environment(ModelData.self) var modelData

    var body: some View {
        NavigationSplitView {
            List {
                ForEach(modelData.categories.keys.sorted(), id: \.self) { key in
                    Text(key)
                }
            }
            .navigationTitle("Featured")
        } detail: {
            ContentUnavailableView {
                Label("Select a Landmark", systemImage: "mountain.2.fill")
            }
        }
    }
}

#Preview {
    CategoryHome().environment(ModelData())
}
