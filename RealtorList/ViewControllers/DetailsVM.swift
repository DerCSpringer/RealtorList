//
//  DetailsVM.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import Foundation
import UIKit
import Kingfisher

class DetailsVM {
    
    let name: String
    let phoneNumber: String
    let title: String
    let photo: URL?
    private let sceneCoordinator: SceneCoordinatorType
    
    init(sceneCoordinator: SceneCoordinatorType, realtor: Realtor) {
        self.sceneCoordinator = sceneCoordinator
        self.name = realtor.fullName ?? ""
        self.phoneNumber = realtor.phoneNumber ?? ""
        self.title = realtor.title ?? ""
        self.photo = realtor.largerPhoto
    }
    
}
