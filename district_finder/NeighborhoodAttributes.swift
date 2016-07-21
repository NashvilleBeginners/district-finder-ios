//
//  NeighborhoodAttributes.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation
import Argo
import Curry

public class NeighborhoodAttributes : Attributes, Decodable {
    public typealias T = NeighborhoodAttributes

    var name: String
    var groupType: String
    var gid: Int
    
    public init(name: String, groupType: String, gid: Int) {
        self.name = name
        self.groupType = groupType
        self.gid = gid
    }
    
    public static func decode(j: JSON) -> Decoded<T> {
        return curry(T.init)
            <^> j <| "name"
            <*> j <| "group-type"
            <*> j <| "gid"
    }
}