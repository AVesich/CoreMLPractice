# CoreMLPractice
Two small coreML projects I used to experiment with both built-in models and models I created myself with online-sourced data.

# Overview:
While both projects are relatively simple, I opted to create both while following the MVVM design pattern to help reinforce my learning of both the pattern and SwiftUI property wrappers. Additionally, both projects were created with simple text for the interface, as I spend a lot of time in Figma and XCode working on UI design, so I didn't see these projects as necessary to represent my design ability.

# Projects:
## Project 1: CoreMLSentimentAnalysis
I created this project with the intent of getting my feet wet in coreML & only did some minor experimentation with the built-in Natural Language framework. I used both the sentiment rating and language identification tags within the model to score both the sentiment of a user inputted string as well as its language.

## Project 2: CoreMLAnimalIdentifier
This project was created with the purpose of learning how to use CreateML as well as the standard CoreML framework for ML model integration in swift projects. I used online animal data from (https://www.kaggle.com/datasets/uciml/zoo-animal-classification) to train the model on zoo animals' attributes for prediction of animal classifications. The app used a pre-defined test attribute set as input to the model and outputs on the screen the predicted classification of the model. In this case, I chose to pre-define the attributes of a snake, and the model properly outputs the number 3, numerically representing the reptile classification. Additionally, I displayed the model's confidence, which in this case the model around 80.76% sure the animal it was given was a reptile.
