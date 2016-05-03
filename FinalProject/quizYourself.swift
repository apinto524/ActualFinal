//
//  quizYourself.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/27/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation


import UIKit
var count = 0
class quizYourself: UIViewController{
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answerA: UILabel!
    @IBOutlet weak var answerB: UILabel!
    @IBOutlet weak var answerC: UILabel!
    @IBOutlet weak var answerD: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var viewControllerButton: UIButton!
    var scoreNumber = 0
    

    
    var questionToBeShown: quizStruct!
    
    var correctQuestions: [Int] = []
    
    var correctButton: String = ""
    
    let allQuestions = [quizStruct(question: "What is the name of this peptide?", answerA: "Valine" , answerB: "Isoleucine" , answerC: "Asparagine", answerD: "Glycine", correctAnswer: "B" , image: "isoleucinePic" , findAnswerVC: "aminoTableVC"),
        quizStruct(question: "What is the term for the arrangement of multiple peptides to from a protein?", answerA: "primary structure", answerB: "secondary structure", answerC: "tertiary structure" , answerD: "quaternary structure", correctAnswer: "D", image: nil, findAnswerVC: "TertiaryQuaternaryStructVC"),
        quizStruct(question: "Which of the following is the term for the order of amino acids?", answerA: "primary structure" , answerB: "secondary structure" , answerC: "tertiary structure", answerD: "quaternary structure", correctAnswer: "A", image: nil, findAnswerVC: "PrimaryStructureVC"),
        quizStruct(question: "Which of the following refers to the three dimensional structure of a single peptide chain?" , answerA: "primary structure" , answerB: "secondary structure", answerC: "tertiary structure", answerD: "quaternary structure" , correctAnswer: "D" , image: nil, findAnswerVC: "TertiaryQuaternaryStructVC" ),
        quizStruct(question: "The primary structure is primarily maintained by:", answerA: "hydrogren bonds", answerB: "ionic bonds", answerC: "peptide bonds", answerD: "none of the above", correctAnswer: "C", image: nil, findAnswerVC: "PrimaryStructureVC"),
        quizStruct(question: "True or false: The name of the bond between the alpha carbon and carboxyl group is the phi bond." , answerA: "True", answerB: "False", answerC: nil, answerD: nil, correctAnswer: "B", image: nil, findAnswerVC: "carbonBackBone")]
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: )]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(count)
        self.view.backgroundColor = UIColor(patternImage: UIImage(imageLiteral: "background"))
        setQuestion()
        
    }
    func setQuestion(){
        if count < allQuestions.count{
            questionToBeShown = allQuestions[count]
            count++
            displayInformation(questionToBeShown)
        } else {
            count = 0
            setQuestion()
        }
    }
    func displayInformation(questionToBeShown: quizStruct){
        self.question.text = questionToBeShown.question
        self.answerA.text = questionToBeShown.answerA
        self.answerB.text = questionToBeShown.answerB
        self.answerC.text = questionToBeShown.answerC
        self.answerD.text = questionToBeShown.answerD
        
    }
    func setCorrectAnswer(answerLetter: String){
        self.correctButton = answerLetter
    }
}