//
//  UserRepository.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//


protocol UserRepository {
    func getUsers() async throws -> [User]
}