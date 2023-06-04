//
//  ViewModel.swift
//  AnimalIdentifier
//
//  Created by Austin Vesich on 6/3/23.
//

import Foundation
import CoreML

class ViewModel: ObservableObject {
    
    // MARK: - Funcs
    func testModel() -> AnimalClassifierModelOutput? {
        do {
            let config = MLModelConfiguration()
            let model = try AnimalClassifierModel(configuration: config)
            // Trying to predict snake
            let prediction = try model.prediction(hair: 0,
                                                  feathers: 0,
                                                  eggs: 1,
                                                  milk: 0,
                                                  airborne: 0,
                                                  aquatic: 0,
                                                  predator: 1,
                                                  toothed: 1,
                                                  backbone: 1,
                                                  breathes: 1,
                                                  venomous: 1,
                                                  fins: 0,
                                                  legs: 0,
                                                  tail: 1,
                                                  domestic: 0,
                                                  catsize: 0)
            return prediction
        } catch {
            
        }
        
        return nil
    }
}
