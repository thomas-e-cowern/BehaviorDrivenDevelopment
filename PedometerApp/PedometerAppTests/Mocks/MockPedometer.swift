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
    func start(completion: @escaping (Error?) -> Void) {
        // More to come
    }
    
    var permissionDeclined: Bool = false
    
    
    var pedometerAvailable: Bool = true
    
    private (set) var started: Bool = false
    
    func start () {
        self.started = true
    }
    
}
