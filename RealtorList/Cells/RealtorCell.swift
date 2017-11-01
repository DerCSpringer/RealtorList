//
//  RealtorCell.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import UIKit

class RealtorCell: UITableViewCell { }

extension RealtorCell {
    func configureWithRealtor(_ realtor: Realtor) {
        self.textLabel?.text = (realtor.firstName ?? "") + " " +  (realtor.lastName ?? "")
        self.detailTextLabel?.text = realtor.phoneNumber ?? ""
    }
}
