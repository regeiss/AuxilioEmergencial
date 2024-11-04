//
//  ResponsavelListaScreen.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 03/11/24.
//

import SwiftUI
import os

struct ResponsavelListaScreen: View
{
    @ObservedObject var viewModel = ResponsavelViewModel()
    
    private static let logger = Logger(
           subsystem: Bundle.main.bundleIdentifier!,
           category: String(describing: ResponsavelViewModel.self)
       )
    
    var body: some View
    {
        List(viewModel.responsaveis) { responsavei in
                   VStack(alignment: .leading) {
                       Text(responsavei.title)
                           .font(.headline)
                       Text(responsavei.body)
                           .font(.subheadline)
                   }
               }
               .onAppear(perform: viewModel.fetchPosts)
    }
}
