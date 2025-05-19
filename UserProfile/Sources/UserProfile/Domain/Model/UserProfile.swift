//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation

struct UserProfile {
    let login: String
    let id: Int
    let avatarURL: URL?
    let url: URL?
    let htmlURL: URL?
    let followersURL: URL?
    let followingURL: URL?
    let name: String?
    let company: String?
    let location: String?
    let email: String?
    let bio: String?
    let twitterUsername: String?
    let publicRepos: Int
    let publicGists: Int
    let followers: Int
    let following: Int
    let createdAt: String
    let updatedAt: String
}
