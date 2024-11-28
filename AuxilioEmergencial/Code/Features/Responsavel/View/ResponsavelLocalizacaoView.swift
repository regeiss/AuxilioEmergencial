//
//  ResponsavelLocalizacaoView.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 17/11/24.
//

import SwiftUI
import MapKit

struct ResponsavelLocalizacaoView: View {
    
    @State var region: MKCoordinateRegion
    
    var body: some View {
        Map(coordinateRegion: $region, showsUserLocation: true, userTrackingMode: .constant(.follow))
            .frame(width: 400, height: 300)
    }
}
