//
//  UserListViewModel.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

import Foundation

@MainActor
class UserListViewModel: ObservableObject {
    @Published var users: [User] = []
    @Published var search: String = "" // Make sure this is empty!

    func load() {
        self.users = UserSelectionHolder.users
    }

    var filteredUsers: [User] {
        let lower = search.lowercased()
        if lower.isEmpty {
            return users // <-- Show all users if nothing is typed
        }
        return users.filter {
            $0.name.lowercased().contains(lower) ||
            $0.username.lowercased().contains(lower) ||
            $0.email.lowercased().contains(lower)
        }
    }
}
