//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation

public protocol Router {
    func navigate(to route: Route)
    func popTopView()
}
