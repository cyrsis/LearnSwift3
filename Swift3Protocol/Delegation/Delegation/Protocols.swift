//
//  Protocols.swift
//  Delegation
//
//  Created by Jon Hoffman on 11/15/15.
//  Copyright © 2015 Jon Hoffman. All rights reserved.
//

import Foundation

protocol FullName {
    var firstName: String {get set}
    var lastName: String {get set}
    var displayNameDelegate: DisplayNameDelegate {get set}
}
