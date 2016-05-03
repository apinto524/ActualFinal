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
var scoreNumber = 0
var correctQuestions: [Int] = []
class quizYourself: UIViewController{
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var question: UILabel!
    @IBOutlet weak var answerA: UILabel!
    @IBOutlet weak var answerB: UILabel!
    @IBOutlet weak var answerC: UILabel!
    @IBOutlet weak var answerD: UILabel!
    @IBOutlet weak var score: UILabel!


    @IBOutlet weak var isCorrect: UIImageView!
    
    var questionToBeShown: quizStruct!
    

    
    var correctButton: String = ""
    
    let allQuestions = [quizStruct(question: "What is the name of this peptide?", answerA: "Valine" , answerB: "Isoleucine" , answerC: "Asparagine", answerD: "Glycine", correctAnswer: "B" , image: "isoleucinePic" , indexNum: 0),
        quizStruct(question: "What is the term for the arrangement of multiple peptide chains to form a protein?", answerA: "primary structure", answerB: "secondary structure", answerC: "tertiary structure" , answerD: "quaternary structure", correctAnswer: "D", image: nil, indexNum: 1),
        quizStruct(question: "Which of the following is the term for the order of amino acids?", answerA: "primary structure" , answerB: "secondary structure" , answerC: "tertiary structure", answerD: "quaternary structure", correctAnswer: "A", image: nil, indexNum: 2),
        quizStruct(question: "Which of the following refers to the three dimensional structure of a single peptide chain?" , answerA: "primary structure" , answerB: "secondary structure", answerC: "tertiary structure", answerD: "quaternary structure" , correctAnswer: "C" , image: nil, indexNum: 3 ),
        quizStruct(question: "The primary structure is primarily maintained by:", answerA: "hydrogren bonds", answerB: "ionic bonds", answerC: "peptide bonds", answerD: "none of the above", correctAnswer: "C", image: nil, indexNum:4),
        quizStruct(question: "True or false: The name of the bond between the alpha carbon and carboxyl group is the phi bond." , answerA: "True", answerB: "False", answerC: nil, answerD: nil, correctAnswer: "B", image: nil, indexNum: 5),
        quizStruct(question: "In an alpha helix, the hydrogen bonding occurs between " , answerA: "adjacent amino acids", answerB:  "the first amino acid's carboxyl group to the fourth amino acid away's amino group.", answerC: "the second amino acid's carboxyl group to the fifth amino acid away's amino group.", answerD: "all of the above", correctAnswer: "B", image: nil , indexNum: 6),
        quizStruct(question:"The biological activity of a protein is determined by its" , answerA: "peptide bonds." , answerB: "amino acid sequence", answerC: " ability to form alpha helices" , answerD: " ability to form beta sheets", correctAnswer: "B", image: nil , indexNum: 7),
        quizStruct(question: "The two types of beta sheets are ", answerA: "flat and folded.", answerB: "parallel and perpendicular", answerC: "parallel and antiparallel", answerD: "left handed and right handed", correctAnswer: "C", image: nil, indexNum: 8)]
       // quizStruct(question: "Domains are ", answerA: "parts of the protein that can function independently.", answerB: "active sites." , answerC: "", answerD: , correctAnswer: , image: , indexNum: )]
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , indexNum: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , indexNum: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , indexNum: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , indexNum: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , indexNum: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , indexNum: ),
//        quizStruct(question: , answerA: , answerB: , answerC: , answerD: , correctAnswer: , image: , indexNum: )]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(count)
        isCorrect.hidden = true
        self.view.backgroundColor = UIColor(patternImage: UIImage(imageLiteral: "background"))
        setQuestion()
        
        
        
    }
    func setQuestion(){
        isCorrect.hidden = true
        self.imageView.hidden = true
        score.text = "\(scoreNumber) / \(allQuestions.count)"
        print("the count is \(count)")
        if count < allQuestions.count{
            let randomQuestionIndex = random() % allQuestions.count
            
            print("The selected index is \(randomQuestionIndex)")
            //if random question index is not in the correctQuestions array question to be shown is passed to display
            if correctQuestions.contains(randomQuestionIndex){
                setQuestion()
            }else{
                questionToBeShown = allQuestions[randomQuestionIndex]
                count++
                displayInformation(questionToBeShown)
            }
        } else {
            correctQuestions = []
            count = 0
            scoreNumber = 0
            setQuestion()
        }
    }
    func displayInformation(questionToBeShown: quizStruct){
        self.question.text = questionToBeShown.question
        self.answerA.text = questionToBeShown.answerA
        self.answerB.text = questionToBeShown.answerB
        self.answerC.text = questionToBeShown.answerC
        self.answerD.text = questionToBeShown.answerD
        
        if questionToBeShown.image != nil {
            print("Image")
            self.imageView.image = UIImage(named: questionToBeShown.image)
            self.imageView.hidden = false
        } else{
            print("no image")
        }
        
        
        setCorrectAnswer(questionToBeShown.correctAnswer)
        
    }
    func setCorrectAnswer(answerLetter: String){
        self.correctButton = answerLetter
    }
    
    func delay(delay:Double, closure:()->()) {
        dispatch_after(
            dispatch_time(
                DISPATCH_TIME_NOW,
                Int64(delay * Double(NSEC_PER_SEC))
            ),
            dispatch_get_main_queue(), closure)
    }
    
    func isButtonATheAnswer(){
        
        if correctButton == "A"{
         print("answer is correct")
            scoreNumber += 1
            correctQuestions.append(questionToBeShown.indexNum)
            print("Added index to array \(correctQuestions)")
            UIView.animateWithDuration(3, animations: {
                self.isCorrect.image = UIImage(named: "correct")
                self.isCorrect.hidden = false
            })
        } else{
            print("incorrect")
            UIView.animateWithDuration(3, animations: {
                self.isCorrect.image = UIImage(named: "incorrect")
                self.isCorrect.hidden = false
            })
            
            
        }
        delay(2){
            self.setQuestion()
        }
    }
   
    //if true display correct image and delete index of add index to correct 
    //questions array. If false keep in stak.
    func isButtonBTheAnswer() {
        if correctButton == "B"{
            print("answer is correct")
            scoreNumber += 1
            correctQuestions.append(questionToBeShown.indexNum)
            print("Added index to array \(correctQuestions)")
            print("\(correctQuestions)")
            UIView.animateWithDuration(3, animations: {
                self.isCorrect.image = UIImage(named: "correct")
                self.isCorrect.hidden = false
            })
        } else{
            print("incorrect")
            UIView.animateWithDuration(3, animations: {
                self.isCorrect.image = UIImage(named: "incorrect")
                self.isCorrect.hidden = false
            })
        }
        delay(2){
            self.setQuestion()
        }
    }
    
    func isButtonCTheAnswer(){
        if correctButton == "C"{
            print("answer is correct")
           scoreNumber += 1
            correctQuestions.append(questionToBeShown.indexNum)
            print("Added index to array \(correctQuestions)")
            print("\(correctQuestions)")
            UIView.animateWithDuration(3, animations: {
                self.isCorrect.image = UIImage(named: "correct")
                self.isCorrect.hidden = false
            })
        } else{
           print("incorrect")
            UIView.animateWithDuration(3, animations: {
                self.isCorrect.image = UIImage(named: "incorrect")
                self.isCorrect.hidden = false
            })
        }
        delay(2){
            self.setQuestion()
        }
    }
    
    func isButtonDTheAnswer(){
        if correctButton == "D"{
            print("answer is correct")
            scoreNumber += 1
            correctQuestions.append(questionToBeShown.indexNum)
            print("Added index to array \(correctQuestions)")
            print("\(correctQuestions)")
            UIView.animateWithDuration(3, animations: {
                self.isCorrect.image = UIImage(named: "correct")
                self.isCorrect.hidden = false
            })
        } else{
            print("incorrect")
            UIView.animateWithDuration(3, animations: {
                self.isCorrect.image = UIImage(named: "incorrect")
                self.isCorrect.hidden = false
            })
        }
        delay(2){
            self.setQuestion()
        }
    }
    @IBAction func buttonAPressed(sender: AnyObject) {
        isButtonATheAnswer()

    }

    @IBAction func buttonBPressed(sender: AnyObject) {
        isButtonBTheAnswer()
    }
    
    @IBAction func buttonCPressed(sender: AnyObject) {
        isButtonCTheAnswer()
    }
    
    @IBAction func buttonDPressed(sender: AnyObject) {
        isButtonDTheAnswer()
    }
    
    
    
    
}