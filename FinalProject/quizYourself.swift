//
//  quizYourself.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/27/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation


import UIKit

class quizYourself: UIViewController{
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answerA: UILabel!
    @IBOutlet weak var answerB: UILabel!
    @IBOutlet weak var answerC: UILabel!
    @IBOutlet weak var answerD: UILabel!
    @IBOutlet weak var score: UILabel!
    @IBOutlet weak var viewControllerButton: UIButton!
    
    
    let allQuestions = [quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: ),
        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , findAnswerVC: )]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(imageLiteral: "background"))
    }
    func setQuestion(){
        
    }
   
}