//
//  File.swift
//  
//
//  Created by Rati Jalalishvili on 16.05.25.
//

import Foundation
import Resolver

public final class UserListViewModel: ObservableObject {
    @Injected private var getUserListUseCase: GetUserListUseCase
    
    @Published var users: [User] = []
    @Published var error: String?
    
    private var didFetchUsers = false
    
    public init() {
        Task {
            await fetchGitUsers()
        }
    }
    
    @MainActor
    private func fetchGitUsers() async {
        guard !didFetchUsers else { return }
        do {
            users = try await getUserListUseCase.getUserList()
            didFetchUsers = true
        } catch {
            self.error = error.localizedDescription
        }
    }
}
