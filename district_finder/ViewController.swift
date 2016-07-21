//
//  ViewController.swift
//  district_finder
//
//  Created by Jacob Lewis on 7/20/16.
//  Copyright © 2016 nashville_beginners. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController, CLLocationManagerDelegate, UISearchBarDelegate, MKMapViewDelegate {

    // MARK: Properties
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var districtInfoView: DistrictInfo!
    
    var locationManager: CLLocationManager = CLLocationManager()
    
    
    // MARK: View controller methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        configureSearchBar()
        
        configureLocationManager()
        beginUpdatingLocation()
        
        configureMapView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    // MARK: Location Manager methods
    
    func configureLocationManager() {
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        locationManager.desiredAccuracy = kCLLocationAccuracyHundredMeters
        locationManager.delegate = self
    }
    
    func beginUpdatingLocation() {
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let location = locations.last! as CLLocation? {
            print("User location was found: \(location)")
            centerMapOnLocation(location)
            locationManager.stopUpdatingLocation()
        } else {
            print("Unable to determine user location.")
        }
        
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("The following error has occurred: \(error)")
    }
    
    
    // MARK: Search bar methods
    
    func searchBarSearchButtonClicked(searchBar: UISearchBar) {
        print("search button clicked")
        
    }
    
    func configureSearchBar() {
        searchBar.delegate = self
        searchBar.placeholder = "Enter an address..."
    }
    
    // MARK: Map view methods
    
    func configureMapView() {
        mapView.delegate = self
        mapView.showsUserLocation = true
        mapView.userInteractionEnabled = true
        mapView.mapType = .Standard
        mapView.zoomEnabled = true
        mapView.scrollEnabled = true
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let center = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region = MKCoordinateRegion(center: center, span: MKCoordinateSpan(latitudeDelta: 0.3, longitudeDelta: 0.3))
        self.mapView.setRegion(region, animated: true)
    }

}