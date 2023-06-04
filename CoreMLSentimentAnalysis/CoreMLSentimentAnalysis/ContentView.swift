//
//  ContentView.swift
//  CoreMLSentimentAnalysis
//
//  Created by Austin Vesich on 6/3/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Declaring Variables
    @StateObject var analysisViewModel: AnalysisViewModel = AnalysisViewModel()
    
    // MARK: - UI
    var body: some View {
        VStack (alignment: .leading) {
            Text("**Welcome!**")
            TextField("Enter Text", text: $analysisViewModel.inputText)
            Text("Happiness Score: \(analysisViewModel.score)")
                .foregroundColor(analysisViewModel.scoreColor)
            Text("Language Entered: \(analysisViewModel.language)")
        }
        .padding(24.0)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(AnalysisViewModel())
    }
}
