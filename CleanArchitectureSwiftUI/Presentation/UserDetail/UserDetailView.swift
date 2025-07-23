//
//  UserDetailView.swift
//  CleanArchitectureSwiftUI
//
//  Created by Shafiul Alam Biplob on 23/7/25.
//

import SwiftUI

struct UserDetailView: View {
    let userId: Int

    var body: some View {
        if let user = UserSelectionHolder.getUser(by: userId) {
            VStack(spacing: 16) {
                Text(user.name).font(.title)
                Text("@\(user.username)").foregroundColor(.gray)
                Text(user.email)
            }
            .navigationTitle("User Detail")
        } else {
            Text("No user found")
        }
    }
}
