//
//  ApiClientResult.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation
import Argo

public enum ApiClientResult<T> {
    case Success(T)
    case Error(NSError)
    case NotFound
    case ServerError(Int)
    case ClientError(Int)
    case UnexpectedResponse(JSON)
}