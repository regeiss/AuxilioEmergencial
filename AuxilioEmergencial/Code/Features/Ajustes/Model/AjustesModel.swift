//
//  AjustesModel.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 26/11/24.
//

import Foundation
import SwiftData

@Model
class AjustesModel: Identifiable {
    
    var nome: String
    
    init(nome: String) {
        self.nome = nome
    }
}
