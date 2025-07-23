//
//  GetUsersUseCaseTests.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

import XCTest
@testable import CleanArchitectureSwiftUI

final class GetUsersUseCaseTests: XCTestCase {
    func testExecute_returnsUsers() async throws {
        let fakeUsers = [
            User(id: 1, name: "A", username: "aa", email: "a@x.com"),
            User(id: 2, name: "B", username: "bb", email: "b@x.com")
        ]
        let mockRepo = MockUserRepository()
        mockRepo.usersToReturn = fakeUsers

        let useCase = GetUsersUseCase(repo: mockRepo)

        let result = try await useCase.execute()
        XCTAssertEqual(result, fakeUsers)
    }

    func testExecute_throwsError() async {
        let mockRepo = MockUserRepository()
        mockRepo.errorToThrow = NSError(domain: "", code: -1)

        let useCase = GetUsersUseCase(repo: mockRepo)

        do {
            _ = try await useCase.execute()
            XCTFail("Should have thrown")
        } catch {
            XCTAssert(true) // Passed!
        }
    }
}
