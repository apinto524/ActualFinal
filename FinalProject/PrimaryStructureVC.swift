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
  

    @IBOutlet weak var informationView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set location of each peptide bond
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
        
        informationView.hidden = true
        self.view.backgroundColor = UIColor(patternImage: UIImage( imageLiteral: "background"))
        addAlert()
    }
    
    @IBAction func sendingtoCarbon(sender: AnyObject) {
        performSegueWithIdentifier("sentCarbon", sender: self)
        
    }
    

    
    @IBAction func handleTap(recognizer:UITapGestureRecognizer) {
        //show n terminal view
        UIView.transitionWithView(informationView, duration: 0.4, options: .TransitionFlipFromRight, animations: {
            self.informationView.hidden = false
            }, completion: nil)
    }

    @IBAction func clearOutView(recognizer: UISwipeGestureRecognizer){
        self.informationView.hidden = true
    }
    
    @IBAction func postTransMod(sender: AnyObject) {
        performSegueWithIdentifier("postTransMod", sender: self)
    }
    
    func addAlert(){
        let controller = UIAlertController()
        controller.title = "Primary Structure"
        controller.message = "The primary structure is the sequence of amino acids to form a poly peptide chain. The sequence of amino acids determines the function and structure of the protein. This means that any activity that the protein carries out is directly coorelated to the primary structure."
        let gotitAction = UIAlertAction(title: "I got it", style: UIAlertActionStyle.Default, handler: {
            action in self.dismissViewControllerAnimated(true, completion: nil)
            
        })
        controller.addAction(gotitAction)
        self.presentViewController(controller, animated: true, completion: nil)
        
        
    }

}