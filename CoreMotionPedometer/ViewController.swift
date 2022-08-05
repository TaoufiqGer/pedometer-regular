//
//  ViewController.swift
//  CoreMotionPedometer
//
//  Created by Taoufiq Germoud on 03/08/2022.
//

import UIKit
import CoreMotion

class ViewController: UIViewController {

    @IBOutlet weak var distance: UILabel!
    
    var pedometer = CMPedometer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        if CMPedometer.isDistanceAvailable() {
            pedometer.startUpdates(from: Date()) { pedometerData, error in
                if let pedometerData = pedometerData {
                    self.distance.text = pedometerData.distance?.stringValue
                    print(pedometerData.distance?.stringValue ?? "no value")
                }
            }
            
        } else {
            print("distance is not available")
        }
        
    }


}

