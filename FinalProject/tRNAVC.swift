//
//  tRNAVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 5/2/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit

class tRNAVC: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(imageLiteral: "background"))
    }
    
    
    @IBAction func returntoHome(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    
    
}