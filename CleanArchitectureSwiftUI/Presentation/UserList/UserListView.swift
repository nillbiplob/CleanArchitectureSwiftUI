//
//  UserListView.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

import SwiftUI

struct UserListView: View {
    @ObservedObject var vm: UserListViewModel
    @Binding var selectedUserId: Int?

    var body: some View {
        VStack {
            TextField("Search users", text: $vm.search)
                .padding()
                .textFieldStyle(.roundedBorder)
            List(vm.filteredUsers) { user in
                Button {
                    selectedUserId = user.id
                } label: {
                    VStack(alignment: .leading) {
                        Text(user.name).bold()
                        Text("@\(user.username)").font(.subheadline).foregroundColor(.gray)
                    }
                }
            }
        }
        .onAppear { vm.load() }
        .navigationTitle("User List")
    }
}

