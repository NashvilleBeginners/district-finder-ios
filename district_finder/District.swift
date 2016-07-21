//
//  District.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation
import Argo
import Curry

public class District : BaseModel<DistrictAttributes>, Decodable {
    public typealias T = District
    required public init(type: String, id: String, attributes: DistrictAttributes) {
        super.init(type: type, id: id, attributes: attributes)
    }
    
    public static func decode(j: JSON) -> Decoded<T> {
        return curry(T.init)
            <^> j <| ["type"]
            <*> j <| "id"
            <*> j <| "attributes"
    }
}