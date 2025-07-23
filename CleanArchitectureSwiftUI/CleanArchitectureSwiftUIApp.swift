//
//  CleanArchitectureSwiftUIApp.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

import SwiftUI

@main
struct CleanArchitectureSwiftUIApp: App {
    @State private var isLoaded = false
    @State private var selectedUserId: Int?

    let useCase = GetUsersUseCase(repo: UserRepositoryImpl())
    
    let vm = UserListViewModel()

    var body: some Scene {
        WindowGroup {
            NavigationView {
                if !isLoaded {
                    SplashView(isLoaded: $isLoaded, useCase: useCase)
                } else if let id = selectedUserId {
                    UserDetailView(userId: id)
                        .toolbar {
                            ToolbarItem(placement: .navigationBarLeading) {
                                Button("Back") { selectedUserId = nil }
                            }
                        }
                } else {
                    UserListView(vm: vm, selectedUserId: $selectedUserId)
                }
            }
        }
    }
}
