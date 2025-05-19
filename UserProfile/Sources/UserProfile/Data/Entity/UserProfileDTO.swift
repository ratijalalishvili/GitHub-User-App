//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation


struct UserProfileDTO: Decodable {
    let login: String?
    let id: Int?
    let avatarURL: String?
    let url: String?
    let htmlURL: String?
    let followersURL: String?
    let followingURL: String?
    let name: String?
    let company: String?
    let location: String?
    let email: String?
    let bio: String?
    let twitterUsername: String?
    let publicRepos: Int?
    let publicGists: Int?
    let followers: Int?
    let following: Int?
    let createdAt: String?
    let updatedAt: String?
    
    var toDomain: UserProfile {
        .init(
            login: login ?? "",
            id: id ?? 0,
            avatarURL: URL(string: avatarURL ?? ""),
            url: URL(string: url ?? ""),
            htmlURL: URL(string: htmlURL ?? ""),
            followersURL: URL(string: followersURL ?? ""),
            followingURL: URL(string: followingURL ?? ""),
            name: name,
            company: company,
            location: location,
            email: email,
            bio: bio,
            twitterUsername: twitterUsername,
            publicRepos: publicRepos ?? 0,
            publicGists: publicGists ?? 0,
            followers: followers ?? 0,
            following: following ?? 0,
            createdAt: createdAt ?? "",
            updatedAt: updatedAt ?? ""
        )
    }
}
