//
//  ResponsavelModel.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 03/11/24.
//

import Foundation

// MARK: - ResponsavelElement
struct ResponsavelElement: Decodable, Identifiable
{
    var id: Int
    var name, username, email: String
    var address: Address
    var phone, website: String
    var company: Company
}

// MARK: - Address
struct Address: Codable {
    var street, suite, city, zipcode: String
    var geo: Geo
}

// MARK: - Geo
struct Geo: Codable {
    var lat, lng: String
}

// MARK: - Company
struct Company: Codable {
    var name, catchPhrase, bs: String
}

typealias Responsavel = ResponsavelElement
