//
//  ViewController.swift
//  district_finder
//
//  Created by Jacob Lewis on 7/20/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    // MARK: Properties
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var districtInfoView: DistrictInfo!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

