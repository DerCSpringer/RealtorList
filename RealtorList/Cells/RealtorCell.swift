//
//  RealtorCell.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit
import Kingfisher

class RealtorCell: UITableViewCell {
    
    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var phoneNumber: UILabel!
}

extension RealtorCell {
    func configureWithRealtor(_ realtor: Realtor) {
        self.name?.text = realtor.fullName
        self.phoneNumber?.text = realtor.phoneNumber ?? ""
        self.photo.kf.setImage(with: realtor.thumbnail)
    }
}
