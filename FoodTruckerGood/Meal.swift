//
//  Meal.swift
//  FoodTruckerGood
//
//  Created by Lukasz Stachnik on 06/11/2020.
//  Copyright © 2020 Warss. All rights reserved.
//

import Foundation
import UIKit

class Meal {
    
    //MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    //MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // The name must not be empty
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initalize stored properties
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
    
}
