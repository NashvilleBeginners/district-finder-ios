//
//  Model.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation

import Foundation
import Argo
import Curry

public protocol Model : Attributable {
    associatedtype T = Self
    associatedtype U = Attributes
    
    var type: String { get set }
    var id: String { get set }
    var attributes: U { get set }
    
    init(type: String, id: String, attributes: U)
}