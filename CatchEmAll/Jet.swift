//
//  Jet.swift
//  CatchEmAll
//
//  Created by Michael Dippery on 8/20/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import Foundation

class Jet:  Plane {
    override func climb() {
        if inFlight {
            altitude += maxAltitude / 5
            if altitude > maxAltitude {
                altitude = maxAltitude
            }
            speed -= maxSpeed / 10
        }
    }
    
    override func dive() {
        if altitude != 0 {
            altitude -= maxAltitude / 5
            if altitude < 0 {
                altitude = 0
            }
            speed += maxSpeed / 10
        }
    }
    
    func afterburner() {
        if inFlight && speed == maxSpeed {
            speed = maxSpeed * 2
        }
    }
}
