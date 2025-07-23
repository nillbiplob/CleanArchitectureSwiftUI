//
//  UserRepositoryImpl.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

class UserRepositoryImpl: UserRepository {
    let remote = UserRemoteDataSource()
    let local = UserLocalDataSource()

    func getUsers() async throws -> [User] {
        do {
            // Try to fetch from API first
            let dtos = try await remote.fetchUsers()
            local.save(users: dtos) // Cache fresh result
            return dtos.map { $0.toDomain() }
        } catch {
            // On error, load from cache
            if let cached = local.load() {
                return cached.map { $0.toDomain() }
            }
            throw error // Rethrow if nothing cached
        }
    }
}
