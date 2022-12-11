//
//  Question.swift
//  PersonalQuizNew
//
//  Created by Sergey Kosichkin on 09.12.2022.
//

struct Question {
    let title: String
    let type: ResponseType
    let answers: [Answer]
    
    static func getQuestions() -> [Question] {
        [Question(title: "What food do you prefer?",
                  type: .single,
                  answers: [Answer(title: "Steak", type: .dog),
                            Answer(title: "Fish", type: .cat),
                            Answer(title: "Carrot", type: .rabbit),
                            Answer(title: "Corn", type: .turtle)]),
         Question(title: "What do you like most?",
                  type: .multiple,
                  answers: [Answer(title: "Swim", type: .dog),
                            Answer(title: "Sleep", type: .cat),
                            Answer(title: "Hug", type: .rabbit),
                            Answer(title: "Eat", type: .turtle)]),
         Question(title: "Do you like to travel by car?",
                  type: .ranged,
                  answers: [Answer(title: "Hate", type: .cat),
                            Answer(title: "Nervous", type: .rabbit),
                            Answer(title: "Don't notice", type: .turtle),
                            Answer(title: "Adore", type: .dog)])
    ]
    }
}


struct Answer {
    let title: String
    let type: AnimalType
}


enum ResponseType {
    case single
    case multiple
    case ranged
}


enum AnimalType: Character, CaseIterable{
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You like being with friends. You surround yourself with people you appreciate and which are always ready to help."
        case .cat:
            return "You are on your mind. Like to walk your way. You appreciate loneliness."
        case .rabbit:
            return "You like all soft things. You're healthy and full of energy."
        case .turtle:
            return "Your strength is in wisdom. Slow and thinking wins on a huge distances."
        }
    }
}
