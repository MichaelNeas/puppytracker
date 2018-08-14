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
    //MARK: Meal Class Tests
    //Confirm that the Puppy initializer returns a Meal object when passed valid params
    func testPuppyInitializationSucceeds(){
        // Zero rating
        let zeroRatingMeal = Puppy.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Puppy.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testPuppyInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Puppy.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Puppy.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Puppy.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
