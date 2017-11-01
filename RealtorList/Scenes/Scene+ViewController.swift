//
//  Scene+ViewController.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

extension Scene {
    func viewController() -> UIViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        switch self { // Switch on the type of scene we want to display
        case .detailsForRealtor(let viewModel):
            let nc = storyboard.instantiateViewController(withIdentifier: "DetailsVC") as! UINavigationController
            var vc = nc.viewControllers.first as! DetailsVC
            // We call this bind after the view is loaded and outlets are loaded
            vc.bindViewModel(to: viewModel)
            return nc
            
        case .realtorList(let viewModel):
            let nc = storyboard.instantiateViewController(withIdentifier: "RealtorListVC") as! UINavigationController
            var vc = nc.viewControllers.first as! RealtorListVC
            vc.bindViewModel(to: viewModel)
            return nc
        }
    }
}
