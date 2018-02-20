//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Michael Neas on 2/19/18.
//  Copyright © 2018 Michael Neas. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    //MARK: Meal Class Tests
    //Confirm that the Food initializer returns a Meal object when passed valid params
    func testFoodInitializationSucceeds(){
        // Zero rating
        let zeroRatingMeal = Food.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Food.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testFoodInitializationFails() {
        // Negative rating
        let negativeRatingMeal = Food.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Food.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Food.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
