//
//  Realtor.swift
//  RealtorList
//
//  Created by Daniel Springer on 11/1/17.
//  Copyright © 2017 Daniel Springer. All rights reserved.
//

import Foundation

struct Realtor {
    // Looks like lastName can be null or "".  Make sure to correct for this
    // There is one title with "", so also check for that
    let firstName: String
    let lastName: String
    let photo: URL
    let phoneNumber: String
    let officeName: String
    let title: String
}
