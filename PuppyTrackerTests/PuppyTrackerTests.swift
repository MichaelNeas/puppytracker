//
//  PuppyTrackerTests.swift
//  PuppyTrackerTests
//
//  Created by Michael Neas on 2/19/18.
//  Copyright © 2018 Michael Neas. All rights reserved.
//

import XCTest
@testable import PuppyTracker

class PuppyTrackerTests: XCTestCase {
    //MARK: Pup Class Tests
    //Confirm that the Puppy initializer returns a Pup object when passed valid params
    func testPuppyInitializationSucceeds(){
        // Zero rating
        let zeroRatingPup = Puppy.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingPup)
        
        // Highest positive rating
        let positiveRatingPup = Puppy.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingPup)
    }
    
    
    
    // Confirm that the Pup initialier returns nil when passed a negative rating or an empty name.
    func testPuppyInitializationFails() {
        // Negative rating
        let negativeRatingPup = Puppy.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingPup)
        
        // Empty String
        let emptyStringPup = Puppy.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringPup)
        
        // Rating exceeds maximum
        let largeRatingPup = Puppy.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingPup)
    }
}
