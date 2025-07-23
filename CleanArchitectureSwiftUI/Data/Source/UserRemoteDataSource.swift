//
//  UserRemoteDataSource.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

import Foundation

class UserRemoteDataSource {
    private let url = URL(string: "https://jsonplaceholder.typicode.com/users")!

    func fetchUsers() async throws -> [UserDto] {
        let (data, _) = try await URLSession.shared.data(from: url)
        return try JSONDecoder().decode([UserDto].self, from: data)
    }
}
