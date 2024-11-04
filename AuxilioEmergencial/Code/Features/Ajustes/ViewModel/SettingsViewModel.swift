//
//  SettingsViewModel.swift
//  ProjetoCusco
//
//  Created by Roberto Edgar Geiss on 14/07/24.
//

import Foundation
import Combine

class SettingsViewModel: ObservableObject
{

    @Published var user = ""
    @Published var displayName = ""
    @Published var isGuestUser = false
    @Published var loggedInAs = ""

   
}
