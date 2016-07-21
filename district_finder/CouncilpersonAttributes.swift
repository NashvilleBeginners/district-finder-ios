//
//  CouncilPersonAttributes.swift
//  district_finder
//
//  Created by Sean Hill on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation

import Argo
import Curry

public class CouncilpersonAttributes : Attributes, Decodable {
    public typealias T = CouncilpersonAttributes
    
    var zip: Int
    var position: String
    var lastName: String
    var homePhone: String
    var firstName: String
    var email: String
    var city: String
    var businessPhone: String
    var address: String
    
    public init(firstName: String, lastName: String, position: String,
                address: String, city: String, zip: Int, email: String,
                businessPhone: String, homePhone: String)
    {
        self.firstName = firstName
        self.lastName = lastName
        self.position = position
        self.address = address
        self.city = city
        self.zip = zip
        self.email = email
        self.businessPhone = businessPhone
        self.homePhone = homePhone
    }
    
    public static func decode(j: JSON) -> Decoded<T> {
        return curry(T.init)
            <^> j <| "first-name"
            <*> j <| "last-name"
            <*> j <| "position"
            <*> j <| "address"
            <*> j <| "city"
            <*> j <| "zip"
            <*> j <| "email"
            <*> j <| "business-phone"
            <*> j <| "home-phone"
    }
}