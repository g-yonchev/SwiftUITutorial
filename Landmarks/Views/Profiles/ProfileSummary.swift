//
//  ProfileSummary.swift
//  Landmarks
//
//  Created by Zhoro on 11/26/25.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    var profile: Profile

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text(profile.username)
                    .bold()
                    .font(.title)

                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: \(Text(profile.goalDate, style: .date))")

                Divider()

                VStack(alignment: .leading) {
                    Text("Earned Badges")
                        .font(.headline)
                    
                    ScrollView(.horizontal) {
                        HStack {
                            HikeBadge(name: "Firts Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 45))
                            HikeBadge(name: "Keep Strong")
                                .hueRotation(Angle(degrees: 90))
                            HikeBadge(name: "Tenth Hike")
                                .hueRotation(Angle(degrees: 180))
                                .grayscale(0.5)
                        }
                        .padding(.bottom)
                    }
                }

                Divider()

                
                VStack(alignment: .leading) {
                    Text("Recent Hikes")
                        .font(.headline)

                    HikeView(hike: modelData.hikes[0])
                }
                

            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
