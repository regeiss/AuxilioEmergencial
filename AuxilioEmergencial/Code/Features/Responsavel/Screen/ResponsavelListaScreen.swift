//
//  ResponsavelListaScreen.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 03/11/24.
//

import SwiftUI
import SwiftfulRouting
import os

struct ResponsavelListaScreen: View {
    @ObservedObject var viewModel = ResponsavelViewModel()
    
    private static let logger = Logger(
        subsystem: Bundle.main.bundleIdentifier!,
        category: String(describing: ResponsavelViewModel.self)
    )
    
    var body: some View {
        RouterView { _ in
            List(viewModel.responsaveis) { responsaveis in
                ResponsavelListaView(responsaveis: responsaveis
                )
            }
            .listStyle(.plain)
            .onAppear(perform: viewModel.fetchPosts)
            .navigationTitle("Responsáveis")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

