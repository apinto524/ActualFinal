//
//  TertiaryQuaternaryStructVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 3/19/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit

class TertiaryQuaternaryStructVC: UIViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
         self.view.backgroundColor = UIColor(patternImage: UIImage( imageLiteral: "background"))
        
    }

 

    @IBAction func goback(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
}