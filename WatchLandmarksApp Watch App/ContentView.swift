//
//  ContentView.swift
//  WatchLandmarksApp Watch App
//
//  Created by Zhoro on 11/26/25.
//

import SwiftUI
import UserNotifications

struct ContentView: View {
    var body: some View {
        LandmarkList()
            .task {
                let center = UNUserNotificationCenter.current()
                _ = try? await center.requestAuthorization(
                    options: [.alert, .sound, .badge]
                )
            }
    }
}

#Preview {
    ContentView().environment(ModelData())
}
