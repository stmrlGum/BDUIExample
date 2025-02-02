//
//  NetworkManager.swift
//  BDUIExample
//
//  Created by Danil on 26.01.2025.
//

import Alamofire
import Foundation

class NetworkManager {
    
    
    func parseLocalJson(completion: @escaping (_ uiModels: [UIModel]) -> Void) {
        guard let fileURL = Bundle.main.url(forResource: "UIJson", withExtension: "json") else { return }
        let fileURLString = fileURL.absoluteString
        AF.request(fileURLString).responseDecodable(of: [UIModel].self) { response in
            switch response.result {
            case .success(let ui):
                completion(ui)
            case .failure(let error):
                print("\(error.localizedDescription)")
            }
        }
    }
}
