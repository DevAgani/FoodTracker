//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by George  on 08/12/2020.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

   //MARK: Meal Class Tests
    
    // Confirm that the Meal initializer returns a Meal Object when passed valid parameters
    
    func test_initializeMealShouldSucceed() {
        // Zero Rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest Positive Rating
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }

    
    func test_initializeMealShouldFail() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -2)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
