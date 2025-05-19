//
//  GitHubUsersApp.swift
//  GitHubUsers
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import SwiftUI
import UserList
import CoreNavigation
import UserProfile

@main
struct GitHubUsersApp: App {
    @StateObject private var router = AppRouter()
    
    @StateObject private var userListViewModel = UserListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationStack(path: $router.path) {
                createUserListView()
                    .navigationDestination(for: Route.self) { route in
                        switch route {
                        case .userList:
                            createUserListView()
                        case .userProfile(userId: let userId):
                            createUserProfileView(for: userId)
                        case .userGitWebView(url: _):
                            Color.red
                        }
                    }
            }
        }
    }
    
    
    @ViewBuilder
    private func createUserListView() -> some View {
        UserListView(router: router)
            .environmentObject(userListViewModel)
    }
    
    @ViewBuilder
    private func createUserProfileView(for userId: Int) -> some View {
        let viewModel = UserProfileViewModel(userId: userId)
        UserProfileView(viewModel: viewModel, router: router)
    }
}
