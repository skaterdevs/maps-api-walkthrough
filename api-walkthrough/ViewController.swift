//
//  ViewController.swift
//  api-walkthrough
//
//  Created by Jason on 10/24/23.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Create a GMSCameraPosition that tells the map to display the
        // coordinate 40.44, -79.94 at zoom level 6.
        let camera = GMSCameraPosition.camera(withLatitude: 40.44, longitude: -79.94, zoom: 10.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)

        // Creates a marker in the center of the map.
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: 40.44, longitude: -79.94)
        marker.title = "CMU"
        marker.snippet = "Pittsburgh"
        marker.map = mapView
    }


}

