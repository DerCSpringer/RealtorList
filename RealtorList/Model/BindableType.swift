//
//  BindableType.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

protocol BindableType {
    associatedtype ViewModelType
    
    var viewModel: ViewModelType! { get set }
    
    func bindViewModel()
}

extension BindableType where Self: UIViewController {
    mutating func bindViewModel(to model: Self.ViewModelType) { // This function binds VCs to VMs
        // We don't use viewDidLoad() because our VM must be assigned before it's called
        viewModel = model
        loadViewIfNeeded()
        bindViewModel()
    }
}
