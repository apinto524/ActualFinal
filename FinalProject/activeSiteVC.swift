//
//  activeSiteVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/19/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit

class activeSiteVC: UIViewController{
    
    
  
    @IBOutlet weak var sticksUpperHelix: UIImageView!
    @IBOutlet weak var animateableHemeIronSphereSideView: UIImageView!
    @IBOutlet weak var oxygen2: UIImageView!
    
    
    
    @IBOutlet weak var sticksLowerHelix: UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(imageLiteral: "background"))
        startAnimations()
    }
    
    @IBAction func returnToMainmenu(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }
    func startAnimations(){
        UIView.animateWithDuration(4, delay: 4, options: .CurveEaseIn, animations: { action in
            
            
            }, completion: {finished in
            //print or send to next step of animation
            
        })
    }
}