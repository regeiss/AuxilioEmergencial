//
//  ResponsavelRepository.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 06/11/24.
//

import Foundation
import Alamofire

protocol ResponsavelRepository {
    func getResponsaveis(completion: @escaping (Result<[Responsavel], AFError>) -> Void)
}
