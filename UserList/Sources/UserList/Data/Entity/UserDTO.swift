//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation

struct UserDTO: Decodable {
    let login: String?
    let id: Int
    let avatarURL: String?
    let htmlURL: String?
    
    var toDomain: User {
        .init(
            login: login ?? "",
            id: id,
            avatarURL: URL(string: avatarURL ?? ""),
            htmlURL: URL(string: htmlURL ?? "")
        )
    }
}
