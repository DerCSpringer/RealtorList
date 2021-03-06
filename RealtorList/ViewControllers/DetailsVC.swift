//
//  DetailsVC.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

class DetailsVC: UIViewController, BindableType {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
    @IBOutlet weak var companyTitle: UILabel!
    
    var viewModel: DetailsVM!
    
    @IBAction func done(_ sender: UIBarButtonItem) {
        viewModel.pop()
    }
    
    func bindViewModel() {
        self.photo.kf.setImage(with: viewModel.photo)
        self.name.text = viewModel.name
        self.phoneNumber.text = viewModel.phoneNumber
        self.companyTitle.text = viewModel.title
    }
    
}
