//
//  Profile.swift
//  Landmarks
//
//  Created by Zhoro on 11/26/25.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotifications: Bool = true
    var goalDate: Date = Date()
    var seasonalPhoto: Seasons = Seasons.spring

    static let `default` = Profile(username: "g_yonchev")

    enum Seasons: String {
        case winter = "🌷"
        case spring = "🌞"
        case summer = "🍂"
        case autumn = "☃️"

        var id: String { self.rawValue }
    }
    
}
