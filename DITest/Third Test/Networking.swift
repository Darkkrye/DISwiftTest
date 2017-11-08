//
//  Networking.swift
//  DITest
//
//  Created by Openfield Mobility on 08/11/2017.
//  Copyright © 2017 Openfield. All rights reserved.
//

import Foundation

protocol Networking {
    func request(response: (NSData?) -> ())
}
