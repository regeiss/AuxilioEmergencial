//
//  SettingsScreen.swift
//  ProjetoCusco
//
//  Created by Roberto Edgar Geiss on 14/07/24.
//

import SwiftUI
import SwiftfulRouting

struct AjustesScreen: View
{
    @Environment(\.dismiss) var dismiss
    @StateObject var viewModel = SettingsViewModel()
    @State var isShowSignUpDialogPresented = false
    
    var body: some View
    {
        RouterView { _ in
            ScrollView
            {
                Text("Em desenvolvimento")
            }
            .navigationTitle("Ajustes")
            .navigationBarTitleDisplayMode(.large)
        }
        
    }
}
