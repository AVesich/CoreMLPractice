//
//  AnalysisViewModel.swift
//  CoreMLSentimentAnalysis
//
//  Created by Austin Vesich on 6/3/23.
//

import Foundation
import NaturalLanguage
import SwiftUI

class AnalysisViewModel: ObservableObject {
    
    // MARK: - Declaring Variables
    // Published score of the input
    @Published var score: String = "no score"
    // Make the text green when positive statements are entered and red for negative statements
    var scoreColor: Color {
        guard let scoreNum = Double(score) else { return Color.black }
        if scoreNum > 0 { return Color.green }
        return Color.red
    }
    // Published language of the input
    @Published var language: String = "no language"
    // Input from the view
    var inputText: String = "" {
        didSet {
            score = analyzeSentiment(for: inputText)
            language = analyzeLanguage(for: inputText)
        }
    }
    // Natual language tagger used to analyze the input
    private let tagger = NLTagger(tagSchemes: [
        .sentimentScore,
        .language
    ])
    
    // MARK: - Funcs
    // Sentiment analysis
    private func analyzeSentiment(for input: String) -> String {
        tagger.string = input
        let (score, _) = tagger.tag(at: input.startIndex, unit: .paragraph, scheme: .sentimentScore) // Returns the score and the range of indices checked, which we regard as throwaway.
        return score?.rawValue ?? "no score"
    }
    
    // Language analysis
    private func analyzeLanguage(for input: String) -> String {
        tagger.string = input
        let (language, _) = tagger.tag(at: input.startIndex, unit: .paragraph, scheme: .language) // Returns the score and the range of indices checked, which we regard as throwaway.
        return language?.rawValue ?? "no language"
    }
}
