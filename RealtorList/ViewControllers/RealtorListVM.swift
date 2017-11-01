//
//  RealtorListVM.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import Foundation

class RealtorListVM {
    
    private let sceneCoordinator: SceneCoordinatorType
    private let fetchingService: RealtorInfoAPI
    let realtorList = [Realtor]()
    
    init(fetchingService: RealtorInfoAPI, sceneCoordinator: SceneCoordinatorType) {
        self.sceneCoordinator = sceneCoordinator
        self.fetchingService = fetchingService
        self.fetchRealtors()
    }
    
    private func fetchRealtors() {
        
        self.fetchingService.getData { result in
            switch result {
            case .Success(let realtors):
                print(realtors)
            case .Error(let error):
                print(error)
            }
        }
    }
    
}
