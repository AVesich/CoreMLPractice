//
//  ContentView.swift
//  AnimalIdentifier
//
//  Created by Austin Vesich on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Declaring Variables
    @StateObject var viewModel: ViewModel = ViewModel()
    
    // MARK: - UI
    var body: some View {
        VStack (alignment: .leading) {
            // The model returns 3: the class type for a reptile. This is correct since snakes are reptiles :)
            let predictedClassType = viewModel.testModel()?.class_type ?? 0
            Text("Snake Type Prediction: \(predictedClassType)")
            Text("Reptile Prediction Confidence: \(viewModel.testModel()?.class_typeProbability[predictedClassType] ?? 0)")
        }
        .padding(24.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ViewModel())
    }
}
