//
//  PedometerViewModel.swift
//  PedometerApp
//
//  Created by Thomas Cowern New on 3/28/22.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
import CoreMotion

enum AppState {
    case notStarted
    case inProgress
}

class PedometerViewModel {
    
    var pedometer: Pedomter
    var appState: AppState = .notStarted
    
    init(pedometer: Pedomter) {
        self.pedometer = pedometer
    }
    
    func startPedometer () {
        
        guard pedometer.pedometerAvailable else {
            appState = .notStarted
            return
        }
        
        guard !pedometer.permissionDeclined else {
            appState = .notStarted
            return
        }
        
        self.appState = .inProgress
        
        pedometer.start()
    }
    
}
