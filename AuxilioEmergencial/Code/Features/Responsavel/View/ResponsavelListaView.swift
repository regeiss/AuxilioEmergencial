//
//  ResponsavelListaView.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 17/11/24.
//

import SwiftUI
import SwiftfulRouting

struct ResponsavelListaView: View {
    
    @Environment(\.router) var router
    var responsaveis: Responsavel
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(responsaveis.name)
                .font(.headline)
            Text(responsaveis.email)
                .font(.subheadline)
        }
        .onTapGesture {
            router.showScreen(.push) { _ in
                ResponsavelDetalheView(responsaveis: responsaveis)
            }
        }
    }
}
