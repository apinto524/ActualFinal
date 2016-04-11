//
//  ribosomeVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 3/20/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit

class ribosomeVC: UIViewController{
    @IBOutlet weak var tRNA1: UIImageView!
    @IBOutlet weak var tRNA2: UIImageView!
    @IBOutlet weak var tRNA3: UIImageView!
    @IBOutlet weak var bond2: UIImageView!
    @IBOutlet weak var bond3: UIImageView!
    @IBOutlet weak var exitLabel: UILabel!
    @IBOutlet weak var pSiteLabel: UILabel!
    @IBOutlet weak var aSiteLabel: UILabel!
    @IBOutlet weak var largeUnit: UIButton!
    @IBOutlet weak var smallUnit: UIImageView!
    @IBOutlet weak var leucine: UIImageView!
    @IBOutlet weak var serine: UIImageView!
    @IBOutlet weak var mRNA: UIImageView!
    @IBOutlet weak var firstAminoSegue: UIButton!
    @IBOutlet weak var tRNASegue: UIButton!
    @IBOutlet weak var sendToAminoVC: UIButton!
    var numaddstRNA = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setDefaults()
        self.view.backgroundColor = UIColor(patternImage: UIImage( imageLiteral: "background"))
        
    }
    override func viewWillAppear(animated: Bool) {
        setDefaults()

    }
    
    override func viewDidAppear(animated: Bool) {
        setDefaults()
    }
    
    override func viewWillDisappear(animated: Bool) {
        setDefaults()
    }
    override func viewDidDisappear(animated: Bool) {
        setDefaults()
    }
    
    func setDefaults(){
        bond2.hidden = true
        bond3.hidden = true
        
        tRNA2.frame.size.width = 29
        tRNA2.frame.size.height = 73
        
        tRNA3.frame.size.width = 29
        tRNA3.frame.size.height = 73
        
        serine.frame.size.width = 15
        serine.frame.size.height = 16
        
        leucine.frame.size.width = 15
        leucine.frame.size.height = 16
        
        tRNA2.frame.origin.y = 28
        tRNA2.frame.origin.x = 288
        
        tRNA3.frame.origin.y = 28
        tRNA3.frame.origin.x = 328
        
        serine.frame.origin.x = 296
        serine.frame.origin.y = 20
        
        leucine.frame.origin.y = 20
        leucine.frame.origin.x = 337
        
        exitLabel.hidden = false
        
        pSiteLabel.hidden = false
        
        aSiteLabel.hidden = false
        
        aSiteLabel.frame.origin.x = 218
        aSiteLabel.frame.origin.y = 279
        
        largeUnit.frame.origin.x = 20
        smallUnit.frame.origin.x = 20
        
        largeUnit.frame.origin.y = 159
        smallUnit.frame.origin.y = 426
        
        tRNA1.frame.origin.y = 161
        tRNA1.frame.origin.x = 115
        
        numaddstRNA = 0
        
        tRNASegue.enabled = true
        
        sendToAminoVC.enabled = false
        firstAminoSegue.enabled = true
        

    }
    

    @IBAction func selectRibosome(sender: AnyObject) {
        //when ribosome is selected animation starts and labels are hidden
        UIView.animateWithDuration(0.6, delay: 0.33, options: [.CurveEaseInOut], animations: {
            self.setDefaults()
            self.exitLabel.hidden = true
            self.pSiteLabel.hidden = true
            self.aSiteLabel.hidden = true
            }, completion: { finished in

                self.moveIntoASite(self.tRNA2, amino: self.serine, bond: self.bond2)
        })
        
    }
    
    
    func moveIntoASite(tRNA: UIImageView, amino: UIImageView, bond: UIImageView){
    
        UIView.animateWithDuration(0.8, delay: 0.5, options: [], animations: {
            //keep track of added tRNA
            self.numaddstRNA += 1
            //expand tRNAframe
            var tRNAFrame = tRNA.frame
            tRNAFrame.size.height = 240
            tRNAFrame.size.width = 85
            tRNAFrame.origin.y = 159
            
            //expand amino fram
            var aminoFrame = amino.frame
            aminoFrame.size.width = 54
            aminoFrame.size.height = 49
            aminoFrame.origin.y = 124
            
            //if first tRNA added, send to further left location
            if self.numaddstRNA == 1{
                tRNAFrame.origin.x = 182
                aminoFrame.origin.x = 207
            }
            //if second tRNA being added send to last position
            if self.numaddstRNA == 2{
                tRNAFrame.origin.x = 265
                aminoFrame.origin.x = 280
            
            }
          
            amino.frame = aminoFrame
            tRNA.frame = tRNAFrame
 
            }, completion: { finished in
                self.shiftRibosome(bond)
                
        })
    }
    func shiftRibosome(bond: UIImageView){
        //move the ribosome

        UIView.animateWithDuration(0.5, delay: 0.33, options: [.CurveEaseInOut], animations: {
            //show bond
                bond.hidden = false
            //shift frame of ribosome
                var largeUnitFrame = self.largeUnit.frame
                largeUnitFrame.origin.x += self.tRNA1.frame.width - 10
                self.largeUnit.frame = largeUnitFrame
            
            //use a site  label as a frame of reference for location of A site
                var aSiteFrame = self.aSiteLabel.frame
                aSiteFrame.origin.x = self.largeUnit.frame.origin.x + (self.largeUnit.frame.width - 65)
                self.aSiteLabel.frame = aSiteFrame
                
                
                var smallUnitFrame = self.smallUnit.frame
                smallUnitFrame.origin.x = self.largeUnit.frame.origin.x
                self.smallUnit.frame = smallUnitFrame
                
            

            
            }, completion: { finished in
                if self.numaddstRNA == 1{
                    self.removetRNA(self.tRNA1)
                }
                if self.numaddstRNA == 2{
                    self.removetRNA(self.tRNA2)
                }

        })
    }
    func removetRNA(trna: UIImageView){
        UIView.animateWithDuration(0.4, delay: 0.2, options: [.CurveEaseIn], animations: {
            //remove tRNA
            var tRNAFrame = trna.frame
            tRNAFrame.origin.y = self.view.frame.minY
            tRNAFrame.origin.x = self.view.frame.minX
            tRNAFrame.origin.y -= trna.frame.height
            trna.frame = tRNAFrame
   
            }, completion: {finished in
                if self.numaddstRNA == 1 {
                    //start over
                    self.moveIntoASite(self.tRNA3, amino: self.leucine, bond: self.bond3)
                } else {
                    //enable button to next view
                    
                    self.tRNASegue.enabled = true
                    self.sendToAminoVC.enabled = true
                }

        })
        
    }
}
