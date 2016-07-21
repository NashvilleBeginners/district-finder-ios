//
//  NeighborhoodResponse.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation
import Argo
import Curry

public class NeighborhoodResponse : BaseResponse<Neighborhood> {
    public typealias T = NeighborhoodResponse
    
    public required init(jsonApiVersion: String, data: [Neighborhood]) {
        super.init(jsonApiVersion: jsonApiVersion, data: data)
    }
    
    public static func decode(j: JSON) -> Decoded<T> {
        return curry(T.init)
            <^> j <| ["jsonapi", "version"]
            <*> j <|| "data"
    }
}