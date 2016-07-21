//
//  BaseModel.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation
import Argo
import Curry

public class BaseModel<U: Attributes> : Model {
    public var type: String
    public var id: String
    public var attributes: U
    
    required public init(type: String, id: String, attributes: U) {
        self.type = type
        self.id = id
        self.attributes = attributes
    }
}
