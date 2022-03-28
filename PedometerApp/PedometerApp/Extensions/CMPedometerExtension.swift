//
//  CMPedometerExtension.swift
//  PedometerApp
//
//  Created by Thomas Cowern New on 3/28/22.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
import CoreMotion

extension CMPedometer: Pedomter {
    var permissionDeclined: Bool {
        return CMPedometer.authorizationStatus() == .denied
    }
    
    var pedometerAvailable: Bool {
        return CMPedometer.isStepCountingAvailable() && CMPedometer.isDistanceAvailable() && CMPedometer.authorizationStatus() != .restricted
    }
    
    func start() {
        
    }
}
