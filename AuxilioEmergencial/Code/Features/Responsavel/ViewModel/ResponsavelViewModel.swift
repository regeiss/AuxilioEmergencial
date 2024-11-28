//
//  ResponsavelViewModel.swift
//  AuxilioEmergencial
//
//  Created by Roberto Edgar Geiss on 03/11/24.
//

import Foundation
import Alamofire

class ResponsavelViewModel: ObservableObject {
    
    @Published var responsaveis: [Responsavel] = []
    
    func fetchPosts() {
    
        AF.request("https://jsonplaceholder.typicode.com/users")
            .responseDecodable(of: [Responsavel].self) { response in
                switch response.result {
                    case .success(let responsaveis):
                        self.responsaveis = responsaveis
                    case .failure(let error):
                        print(error.localizedDescription)
                        debugPrint(response)
                }
            }
    }
}
