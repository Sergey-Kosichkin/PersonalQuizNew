//
//  ResultsViewController.swift
//  PersonalQuizNew
//
//  Created by Sergey Kosichkin on 10.12.2022.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet var resultLabel: UILabel!
    @IBOutlet var descriptionLabel: UILabel!
    
    var answers: [Answer]!
    private var resultAnimal: AnimalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        
        calculteResult()
        
        resultLabel.text = "You are a \(resultAnimal.rawValue)"
        descriptionLabel.text = resultAnimal.definition
    }
 
    private func calculteResult() {
        var animalNumbers: [AnimalType : Int] = [:]
        
        for animal in AnimalType.allCases {
            animalNumbers[animal] = 0
        }
        
        for answer in answers {
            animalNumbers[answer.type]? += 1
        }
        
        resultAnimal = animalNumbers.sorted { $0.1 < $1.1 }.last?.key
    }
    
}
