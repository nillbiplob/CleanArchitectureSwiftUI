//
//  MockUserRepository.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

// Tests/Mocks/MockUserRepository.swift
import Foundation
@testable import CleanArchitectureSwiftUI

class MockUserRepository: UserRepository {
    var usersToReturn: [User] = []
    var errorToThrow: Error?

    func getUsers() async throws -> [User] {
        if let error = errorToThrow { throw error }
        return usersToReturn
    }
}
