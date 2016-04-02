//
//  aminoAcidVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 3/23/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit



class aminoAcidVC: UIViewController{

    var aminoInformation: aminoContentStruct!
    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var threeLetters: UILabel!
    @IBOutlet weak var singleLetter: UILabel!
    @IBOutlet weak var sideChainImage: UIImageView!
    @IBOutlet weak var extendedInfo: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.name.text = aminoInformation.name
        self.threeLetters.text = aminoInformation.threeLetterAbrv
        self.singleLetter.text = aminoInformation.singleLetterAbrv
        self.sideChainImage.image = aminoInformation.sideChain
        self.extendedInfo.text = aminoInformation.extendedProperties
 
        
    }
    
    
}