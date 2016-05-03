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
    
    @IBOutlet weak var proximalLabel: UILabel!
    @IBOutlet weak var alphaHelixLabel: UILabel!
    @IBOutlet weak var ironLabel: UILabel!
    @IBOutlet weak var hemeLabel: UILabel!
    @IBOutlet weak var distalLabel: UILabel!
    @IBOutlet weak var oxygenLabel: UILabel!
  

    
    @IBOutlet weak var sticksLowerHelix: UIImageView!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor(patternImage: UIImage(imageLiteral: "background"))
        addAlert()
       
    }
    
    @IBAction func clicked(sender: AnyObject) {
        
        self.sticksUpperHelix.image = UIImage(named: "uppersticks1")
        self.animateableHemeIronSphereSideView.image = UIImage(named: "hemePlanewithFe1")
        
        self.sticksLowerHelix.image = UIImage(named: "lowersticks1")
        self.oxygen2.hidden = false
        clearLabels()
    }
    @IBAction func returnToMainmenu(sender: AnyObject) {
        self.navigationController?.popToRootViewControllerAnimated(true)
    }

 
    
    func clearLabels() {
        UIView.animateWithDuration(2, delay: 5, options: .CurveEaseIn, animations: {
            self.proximalLabel.hidden = true
            self.alphaHelixLabel.hidden = true
            self.ironLabel.hidden = true
            self.hemeLabel.hidden = true
            self.distalLabel.hidden = true
            self.oxygenLabel.hidden = true
            
            }, completion: {finished in
                //print or send to next step of animation
                self.moveOxygen1(CGPoint(x: 165, y: 374))
                
                
        })
    }

    func moveOxygen1(point: CGPoint){
        UIView.animateWithDuration(2, animations: {
            var oxygenFrame = self.oxygen2.frame
            oxygenFrame.origin = point
            self.oxygen2.frame = oxygenFrame
            }, completion: {finished in
                self.changeImages1()
        })
        
    }
    

    
    func changeImages1(){
        self.oxygen2.hidden = true
        UIView.animateWithDuration(2, animations: {
            
         
            self.sticksUpperHelix.image = UIImage(named: "uppersticks2")
            self.animateableHemeIronSphereSideView.image = UIImage(named: "hemePlanewithFe2")
            
            self.sticksLowerHelix.image = UIImage(named: "lowersticks2")
            
            
            
            
            }, completion: {finished in
                self.proximalLabel.hidden = false
                self.alphaHelixLabel.hidden = false
                self.ironLabel.hidden = false
                self.hemeLabel.hidden = false
                self.distalLabel.hidden = false
                
        })
    }
    func addAlert(){
        let controller = UIAlertController()
        controller.title = "Organic Molecules"
        controller.message = "Organic molecules within a protein are often involved in the active site of the protein. In this view, you see heme, a vital part of hemoglobin's ability to transport oxygen. Heme contains an iron atom which binds to oxygen moving the proximal histidine. This small move shifts the alpha helices in hemoglobin and makes it easier for the hemoglobin to take up more oxygen."
        let gotitAction = UIAlertAction(title: "I got it", style: UIAlertActionStyle.Default, handler: {
            action in self.dismissViewControllerAnimated(true, completion: nil)
            
            
        })
        controller.addAction(gotitAction)
        self.presentViewController(controller, animated: true, completion: nil)
        
        
    }

    
}