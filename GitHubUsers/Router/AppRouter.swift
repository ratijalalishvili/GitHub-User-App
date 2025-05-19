//
//  AppRouter.swift
//  GitHubUsers
//
//  Created by Rati Jalalishvili on 17.05.25.
//

import Foundation
import CoreNavigation
import SwiftUI

final class AppRouter: ObservableObject, Router {
    @Published var path = NavigationPath()

    func navigate(to route: Route) {
        path.append(route)
    }
    
    func popTopView() {
        guard path.count > 0 else { return }
        path.removeLast()
    }
}
