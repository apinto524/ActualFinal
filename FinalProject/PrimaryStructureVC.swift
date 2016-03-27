//
//  PrimaryStructureVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 3/19/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit

class PrimaryStructureVC: UIViewController{
    @IBOutlet weak var peptidebond1: UIImageView!
    @IBOutlet weak var peptideBond2: UIImageView!
    @IBOutlet weak var peptideBond3: UIImageView!
    @IBOutlet weak var peptideBond4: UIImageView!
    
    
    @IBOutlet weak var peptideBond5: UIImageView!
    
    @IBOutlet weak var peptideBond6: UIImageView!
    
    @IBOutlet weak var peptideBond7: UIImageView!
    
    @IBOutlet weak var peptideBond8: UIImageView!
    
    @IBOutlet weak var peptideBond9: UIImageView!
    @IBOutlet weak var peptideBond10: UIImageView!
  

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.peptidebond1.transform = CGAffineTransformMakeRotation(-(35.0 * CGFloat(M_PI)) / 180.0)
        
        self.peptideBond2.transform = CGAffineTransformMakeRotation((10.0 * CGFloat(M_PI)) / 180.0)
        
        self.peptideBond3.transform = CGAffineTransformMakeRotation(-(135.0 * CGFloat(M_PI)/180.0))
        
        self.peptideBond4.transform = CGAffineTransformMakeRotation(-( 30.0 * CGFloat(M_PI))/180.0)

        self.peptideBond5.transform = CGAffineTransformMakeRotation(-(15.0 * CGFloat(M_PI)/180.0))
        
        
        self.peptideBond6.transform = CGAffineTransformMakeRotation(60.0 * CGFloat(M_PI) / 180.0)
        
        self.peptideBond7.transform = CGAffineTransformMakeRotation(10.0 * CGFloat(M_PI) / 180.0)
        self.peptideBond8.transform = CGAffineTransformMakeRotation(10.0 * CGFloat(M_PI) / 180.0)
        self.peptideBond9.transform = CGAffineTransformMakeRotation(-(70.0 * CGFloat(M_PI) / 180.0))
        self.peptideBond10.transform = CGAffineTransformMakeRotation(-(10.0 * CGFloat(M_PI) / 180.0))
 
    }
    
    @IBAction func sendingtoCarbon(sender: AnyObject) {
        performSegueWithIdentifier("sentCarbon", sender: self)
        
    }
    
    @IBAction func sendtoPeptideVC(sender: AnyObject) {
        performSegueWithIdentifier("phipsiSegue", sender: self)
    }
    
    @IBAction func handlePan(recognizer:UITapGestureRecognizer) {
        print("huh")
    }

}