//
//  NetworkRouter.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 06/11/24.
//
import Foundation
import Alamofire

enum NetworkRouter
{
    case abrigos
    case responsaveis
    
    var baseURL: URL
    {
        URL(string: "http://apireconstrucao.novohamburgo.rs.gov.br")!
    }
    
    var path: String {
        switch self {
            case .abrigos:
                return "/api/listaabrigos"
            case .responsaveis:
                return "api/responsaveis"
        }
    }
    
    var method: HTTPMethod {
        switch self {
            case .abrigos,
                .responsaveis:
                return .get
        }
    }
    
    var parameters: [String: String] {
        switch self {
            case .abrigos:
                return [:]
            case .responsaveis:
                return [:]
        }
    }
}

// MARK: - URLRequestConvertible
extension NetworkRouter: URLRequestConvertible {
    func asURLRequest() throws -> URLRequest {
        let url = baseURL.appendingPathComponent(path)
        var request = URLRequest(url: url)
        request.method = method
        request = try URLEncodedFormParameterEncoder(destination: .methodDependent)
            .encode(parameters, into: request)
        return request
    }
}
