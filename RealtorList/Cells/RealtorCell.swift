//
//  RealtorCell.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit
import Kingfisher

class RealtorCell: UITableViewCell { }

extension RealtorCell {
    func configureWithRealtor(_ realtor: Realtor) {
        self.textLabel?.text = realtor.fullName
        self.detailTextLabel?.text = realtor.phoneNumber ?? ""
        self.imageView?.kf.setImage(with: realtor.thumbnail)
    }
}
