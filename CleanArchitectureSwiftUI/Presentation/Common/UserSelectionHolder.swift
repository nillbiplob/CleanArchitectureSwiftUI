//
//  UserSelectionHolder.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

class UserSelectionHolder {
    static var users: [User] = []
    static func setUsers(_ users: [User]) { self.users = users }
    static func getUser(by id: Int) -> User? { users.first { $0.id == id } }
}
