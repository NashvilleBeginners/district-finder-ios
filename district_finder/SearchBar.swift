//
//  SearchBar.swift
//  district_finder
//
//  Created by Jacob Lewis on 7/21/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import Foundation

import UIKit

class SearchBar: NSObject, UISearchBarDelegate {
    
    override init() {
        super.init()
        print("search bar delegate initialized")
    }
    
    // MARK: Properties
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        print("search button clicked")
        
    }
    
    func searchBarCancelButtonClicked(searchBar: UISearchBar) {
        searchBar.text = "foooooo"
        print("cancel button was clicked")
    }
    
    
}