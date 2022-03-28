//
//  Pedometer.swift
//  PedometerApp
//
//  Created by Thomas Cowern New on 3/28/22.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation

protocol Pedomter {
    
    var pedometerAvailable: Bool { get }
    var permissionDeclined: Bool { get }
    
    func start()
}
