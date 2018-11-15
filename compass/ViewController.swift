//
//  ViewController.swift
//  compass
//
//  Created by Integro on 11/04/17.
//  Copyright © 2017 nextu. All rights reserved.
//

import UIKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var orientationLabel: UILabel!
    var locationManager: CLLocationManager!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.locationManager = CLLocationManager()
        self.locationManager.delegate = self
        self.locationManager.startUpdatingHeading()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateHeading newHeading: CLHeading) {
        let angle = newHeading.trueHeading
        var orientation = "Orientación: "
        if (angle >= 0 && angle <= 5) || (angle >= 355 && angle <= 360 ) {
            orientation.append("Norte")
        } else if angle >= 85 && angle <= 95 {
            orientation.append("Este")
        } else if angle >= 175 && angle <= 185 {
            orientation.append("Sur")
        } else if angle >= 265 && angle <= 275 {
            orientation.append("Este")
        } else if angle > 5 && angle < 85 {
            orientation.append("NorEste")

        } else if angle > 95 && angle < 175 {            orientation.append("SurEste")
            
        } else if angle > 185 && angle <  265 {            orientation.append("SurOeste")
            
        } else if angle > 275 && angle < 355 {
            orientation.append("NorOeste")

        }
        self.orientationLabel.text = orientation
    }


}

