//
//  Attributable.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation

public protocol Attributable {
    associatedtype T = Self
    associatedtype U: Attributes
    
    var attributes : U { get set }
}