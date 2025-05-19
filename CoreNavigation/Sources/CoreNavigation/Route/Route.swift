//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation

public enum Route: Hashable {
    case userList
    case userProfile(userId: Int)
    case userGitWebView(url: URL)
}
