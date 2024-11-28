//
//  ResponsavelDetalheView.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 17/11/24.
//

import SwiftUI
import SwiftfulRouting
import MapKit

struct ResponsavelDetalheView: View {
    
    @Environment(\.router) var router
    var responsaveis: Responsavel
    
    var body: some View {
        
        VStack(alignment: .leading) {
            Text(responsaveis.address.street)
                .font(.headline)
            Text(responsaveis.address.suite)
                .font(.subheadline)
            Text(responsaveis.address.zipcode)
                .font(.subheadline)
            Text(responsaveis.address.city)
                .font(.subheadline)
            Text(responsaveis.address.geo.lat)
                .font(.subheadline)
            Text(responsaveis.address.geo.lng)
                .font(.subheadline)
            Text(responsaveis.company.name)
                .font(.subheadline)
        }
        .onTapGesture {
            let lat = Double(responsaveis.address.geo.lat) ?? 0
            let lng = Double(responsaveis.address.geo.lng) ?? 0
            
            let region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: lat, longitude: lng), span:  MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
                                        
            router.showScreen(.push) { _ in
                ResponsavelLocalizacaoView(region: region)
            }
        }
    }
}
