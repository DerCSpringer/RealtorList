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
    
    init(fetchingService: RealtorInfoAPI, sceneCoordinator: SceneCoordinatorType) {
        self.sceneCoordinator = sceneCoordinator
        self.fetchingService = fetchingService
    }
    
}
