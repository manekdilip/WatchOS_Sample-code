//
//  ViewController.swift
//  demoWatchKit
//
//  Created by Devubha Manek on 06/04/20.
//  Copyright © 2020 Devubha Manek. All rights reserved.
//

import UIKit
import HealthKit

class WorkoutStarView: UIViewController {

    let healthStore = HKHealthStore()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "ManekTech"
        navigationController?.navigationBar.prefersLargeTitles = true
        
        let typesToShare: Set = [
            HKQuantityType.workoutType()
        ]
        
        let typesToRead: Set = [
            HKQuantityType.quantityType(forIdentifier: .heartRate)!,
            HKQuantityType.quantityType(forIdentifier: .activeEnergyBurned)!,
            HKQuantityType.quantityType(forIdentifier: .distanceWalkingRunning)!
        ]
        
        healthStore.requestAuthorization(toShare: typesToShare, read: typesToRead) { (success, error) in
            // Handle error
            
        }
    }
    
}


