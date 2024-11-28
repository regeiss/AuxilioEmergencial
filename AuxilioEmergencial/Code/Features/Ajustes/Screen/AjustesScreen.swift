//
//  SettingsScreen.swift
//  ProjetoCusco
//
//  Created by Roberto Edgar Geiss on 14/07/24.
//

import SwiftUI
import SwiftData
import SwiftfulRouting

struct AjustesScreen: View {
    
    @Environment(\.modelContext) var modelContext
    @Query var ajustes: [AjustesModel]
    
    var body: some View {
        
        List {
            ForEach(ajustes) { ajuste in
                HStack {
                    Text(ajuste.nome)
                }
            }
            Text("***********")
        }
    }
}
