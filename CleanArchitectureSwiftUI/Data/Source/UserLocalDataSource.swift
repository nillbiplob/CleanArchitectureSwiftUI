//
//  UserLocalDataSource.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

import Foundation

class UserLocalDataSource {
    private let key = "CACHED_USERS"

    // Save users to cache
    func save(users: [UserDto]) {
        let encoder = JSONEncoder()
        if let data = try? encoder.encode(users) {
            UserDefaults.standard.set(data, forKey: key)
        }
    }

    // Load users from cache
    func load() -> [UserDto]? {
        guard let data = UserDefaults.standard.data(forKey: key) else { return nil }
        let decoder = JSONDecoder()
        return try? decoder.decode([UserDto].self, from: data)
    }
}
