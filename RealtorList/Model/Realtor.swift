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
    let firstName: String?
    let lastName: String?
    let photo: URL?
    let phoneNumber: String?
    let officeName: String?
    let title: String?
}

extension Realtor: Decodable {
    enum structKeys: String, CodingKey {
        case firstName = "first_name"
        case lastName = "last_name"
        case title = "title"
        case phoneNumber = "phone_number"
        case officeName = "office"
        case photo = "photo"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: structKeys.self)
        let firstName: String? = try? container.decode(String.self, forKey: .firstName)
        let lastName: String? = try? container.decode(String.self, forKey: .lastName)
        let title: String? = try? container.decode(String.self, forKey: .title)
        let phoneNumber: String? = try? container.decode(String.self, forKey: .phoneNumber)
        let officeName: String? = try? container.decode(String.self, forKey: .officeName)
        let photo: URL? = try? container.decode(URL.self, forKey: .photo)
        
        self.init(firstName: firstName,
                  lastName: lastName,
                  photo: photo,
                  phoneNumber: phoneNumber,
                  officeName: officeName,
                  title: title)
    }
}
