//
//  SplashView.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

import SwiftUI

struct SplashView: View {
    @Binding var isLoaded: Bool
    @State private var loading = true
    @State private var error: String?

    let useCase: GetUsersUseCase

    var body: some View {
        VStack {
            if loading {
                ProgressView("Loading users…")
            } else if let error = error {
                Text(error)
                Button("Retry") { load() }
            }
        }
        .onAppear(perform: load)
    }

    private func load() {
        Task {
            do {
                let users = try await useCase.execute()
                UserSelectionHolder.setUsers(users)
                try await Task.sleep(nanoseconds: 1_200_000_000) // 1.2s
                isLoaded = true
            } catch {
                self.error = error.localizedDescription
                self.loading = false
            }
        }
    }
}
