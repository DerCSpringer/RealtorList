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
    private var realtorList = [Realtor]()
    var didUpdate: (() -> Void)?
    
    init(fetchingService: RealtorInfoAPI, sceneCoordinator: SceneCoordinatorType) {
        self.sceneCoordinator = sceneCoordinator
        self.fetchingService = fetchingService
        self.fetchRealtors()
    }
    
    private func fetchRealtors() {
        self.fetchingService.getData { [weak self] result in
            switch result {
            case .Success(let realtors):
                self?.realtorList = realtors
                self?.didUpdate!()
            case .Error(let error):
                print(error)
            }
        }
    }
    
    func touchedRowAt(indexPath: IndexPath) {
        let realtor = realtorList[indexPath.row]
        let detailsVM = DetailsVM(sceneCoordinator: self.sceneCoordinator, realtor: realtor)
        sceneCoordinator.transition(to: .detailsForRealtor(detailsVM), type: .modal)
    }
    
    func realtorAt(indexPath: IndexPath) -> Realtor {
        return realtorList[indexPath.row]
    }
    
    func realtorCount() -> Int {
        return realtorList.count
    }
    
}
