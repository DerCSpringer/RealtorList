//
//  AppDelegate.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    //Need to do image cache for photos
    //I'll have two fetches available.  Either fetch a thumbnail or fetch a full sized photo
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let sceneCoordinator = SceneCoordinator(window: window!)
        let realtorInfoAPI = RealtorInfoAPI()
        let realtorListVM = RealtorListVM(fetchingService: realtorInfoAPI, sceneCoordinator: sceneCoordinator)
        sceneCoordinator.transition(to: .realtorList(realtorListVM), type: .root)
        return true
    }

}
