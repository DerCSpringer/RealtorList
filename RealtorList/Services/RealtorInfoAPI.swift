//
//  RealtorInfoAPI.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import Foundation

// Hard coded result
enum Result {
    case Success([Realtor])
    case Error(FetchingServiceError)
}

enum FetchingServiceError: Error {
    case Unknown
    case FailedRequest
    case InvalidResponse
}

class RealtorInfoAPI {
    typealias RealtorListCompletionData = (Result) -> ()
    
    private let baseURL = URL(string: "https://www.denverrealestate.com/rest.php/mobile/realtor/list?app_key=f7177163c833dff4b38fc8d2872f1ec6")
    
    
    func getData(completion: @escaping RealtorListCompletionData) {
        self.realtorList(completion: completion)
    }
    
    // MARK: - Private Methods
    private func realtorList(completion: @escaping RealtorListCompletionData) {
        
        var request = URLRequest(url: baseURL!)
        request.httpMethod = "GET"
        
        URLSession.shared.dataTask(with: request) { (data, response, error) in
            self.didFetchRealtorList(data: data, response: response, error: error, completion: completion)
            }.resume()
    }
    
    private func didFetchRealtorList(data: Data?, response: URLResponse?, error: Error?, completion: RealtorListCompletionData) {
        if let _ = error {
            completion(.Error(.FailedRequest))
            
        } else if let data = data, let response = response as? HTTPURLResponse {
            if response.statusCode == 200 {
                processRealtorListData(data: data, completion: completion)
            } else {
                completion(.Error(.FailedRequest))
            }
        } else {
            completion(.Error(.Unknown))
        }
    }
    
    private func processRealtorListData(data: Data, completion: RealtorListCompletionData) {
        do {
            let realtorList = try JSONDecoder().decode([Realtor].self, from: data)
            completion(.Success(realtorList))
        } catch {
            completion(.Error(.InvalidResponse))
        }
    }
}
