//
//  MockPedometer.swift
//  PedometerAppTests
//
//  Created by Thomas Cowern New on 3/28/22.
//  Copyright © 2022 Mohammad Azam. All rights reserved.
//

import Foundation
@testable import PedometerApp

class MockPedometer: Pedomter {
    
    private (set) var started: Bool = false
    
    func start () {
        self.started = true
    }
    
}