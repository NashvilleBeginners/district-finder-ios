//
//  BaseResponse.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation

import Argo
import Curry

public class BaseResponse<T> : Response {
    public var jsonApiVersion: String
    public var data: [T]?
    
    public required init(jsonApiVersion: String, data: [T]) {
        self.jsonApiVersion = jsonApiVersion
        self.data = data
    }
}
