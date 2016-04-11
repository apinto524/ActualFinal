//
//  posttranslationVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 3/29/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit

class posttranslationVC: UIViewController{
    
    
  
    
    @IBOutlet weak var phosphoserine: UIImageView!
    @IBOutlet weak var arrow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage( imageLiteral: "background"))
        initialize()
    }
    
    override func viewWillAppear(animated: Bool) {
        initialize()
    }
    
    override func viewDidAppear(animated: Bool) {
        initialize()
    }
    
    func initialize(){


 
        animation()
    }
    func animation(){
        UIView.animateWithDuration(2.0, delay: 0.7, options: [], animations: {
            self.arrow.hidden = false
            self.phosphoserine.hidden = false
       
            }, completion: nil)
    }
    
    
}