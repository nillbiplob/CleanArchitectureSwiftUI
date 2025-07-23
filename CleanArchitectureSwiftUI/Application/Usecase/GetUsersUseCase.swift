//
//  GetUsersUseCase.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

class GetUsersUseCase {
    let repo: UserRepository

    init(repo: UserRepository) {
        self.repo = repo
    }

    func execute() async throws -> [User] {
        try await repo.getUsers()
    }
}
