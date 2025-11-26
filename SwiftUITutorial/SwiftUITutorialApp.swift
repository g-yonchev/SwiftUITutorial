//
//  SwiftUITutorialApp.swift
//  SwiftUITutorial
//
//  Created by Zhoro on 11/25/25.
//

import SwiftUI

@main
struct SwiftUITutorialApp: App {
    @State private var modelData = ModelData()

    var body: some Scene {
        WindowGroup {
            ContentView().environment(modelData)
        }
    }
}
