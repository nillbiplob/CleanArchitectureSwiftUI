//
//  UserTests.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

import XCTest
@testable import CleanArchitectureSwiftUI

final class UserTests: XCTestCase {
    func testUserEquality() {
        let user1 = User(id: 1, name: "A", username: "B", email: "a@x.com")
        let user2 = User(id: 1, name: "A", username: "B", email: "a@x.com")
        XCTAssertEqual(user1, user2)
    }
}
