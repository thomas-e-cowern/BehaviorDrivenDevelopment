//
//  PedometerAppTests.swift
//  PedometerAppTests
//
//  Created by Mohammad Azam on 4/4/20.
//  Copyright © 2020 Mohammad Azam. All rights reserved.
//

import XCTest
import CoreMotion
@testable import PedometerApp

class PedometerAppTests: XCTestCase {
    
    func tests_StartsPedometer () {
        
        let mockPedometer = MockPedometer()
        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)
        
        pedometerVM.startPedometer()
        
        XCTAssert(mockPedometer.started)
    }

    func tests_PedometerIsNotAvailable () {
        
        let mockPedometer = MockPedometer()
        mockPedometer.pedometerAvailable = false
        
        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)
        XCTAssertEqual(pedometerVM.appState, .notStarted)
        
    }

    func tests_PedometerNotAuthorized () {
        
        let mockPedometer = MockPedometer()
        mockPedometer.permissionDeclined = true
        
        let pedometerVM = PedometerViewModel(pedometer: mockPedometer)
        
        pedometerVM.startPedometer()
        
        XCTAssertEqual(pedometerVM.appState, .notStarted)
    }
    
}
