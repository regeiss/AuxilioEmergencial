//
//  Item.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 29/10/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
