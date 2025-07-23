//
//  UserDto.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

struct UserDto: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String

    func toDomain() -> User {
        .init(id: id, name: name, username: username, email: email)
    }
}
