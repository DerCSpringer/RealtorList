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
    
    override func viewDidLoad() {
        self.photo.layer.cornerRadius = self.photo.frame.size.width / 2
        self.photo.clipsToBounds = true
    }
    
    func bindViewModel() {
        
    }
    
}
