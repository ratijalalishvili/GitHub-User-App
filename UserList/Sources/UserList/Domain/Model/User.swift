//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation

struct User: Identifiable {
    let login: String
    let id: Int
    let avatarURL: URL?
    let htmlURL: URL?
}
