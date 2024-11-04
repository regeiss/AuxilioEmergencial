//
//  ResponsavelModel.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 03/11/24.
//

import Foundation

struct ResponsavelModel: Decodable, Identifiable
{
    let id: Int
    let title: String
    let body: String
}
