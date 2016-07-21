//
//  DistrictAttributes.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation
import Argo
import Curry

public class DistrictAttributes : Attributes, Decodable {
    public typealias T = DistrictAttributes
    
    var gid: Int
    var district: Int
    var councilperson: CouncilpersonAttributes
    
    public init(gid: Int, district: Int, councilperson: CouncilpersonAttributes) {
        self.gid = gid
        self.district = district
        self.councilperson = councilperson
    }
    
    public static func decode(j: JSON) -> Decoded<T> {
        return curry(T.init)
            <^> j <| "gid"
            <*> j <| "district"
            <*> j <| "councilperson"
    }
}