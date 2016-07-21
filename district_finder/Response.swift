//
//  Response.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation

public protocol Response {
    associatedtype T
    
    var jsonApiVersion: String { get set }
    var data: [T]? { get set }
    
    init(jsonApiVersion: String, data: [T])
}