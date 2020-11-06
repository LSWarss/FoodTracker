//
//  FoodTruckerGoodTests.swift
//  FoodTruckerGoodTests
//
//  Created by Lukasz Stachnik on 04/11/2020.
//  Copyright © 2020 Warss. All rights reserved.
//

import XCTest
@testable import FoodTruckerGood

class FoodTruckerGoodTests: XCTestCase {

    //MARK: Meal Class Tests
    
    // Confirm that the Meal initlizer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "Positivie", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    // Confirm that the Meal initialier raturns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        // Negative rating
        let negativeRating = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRating)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        // Empty string
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }

}
