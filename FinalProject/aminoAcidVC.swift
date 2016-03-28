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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.name.text = aminoInformation.name
    }
    
    
}