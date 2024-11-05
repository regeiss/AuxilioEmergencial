//
//  UserProfileView.swift
//  ProjetoCusco
//
//  Created by Roberto Edgar Geiss on 14/07/24.
//

import SwiftUI
import SwiftfulRouting

struct UserProfileView: View
{
    var body: some View
    {
        RouterView { _ in
            ScrollView
            {
                Text("Em desenvolvimento")
            }
            .navigationTitle("Perfil")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}
