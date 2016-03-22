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
    @IBOutlet weak var largeUnit: UIImageView!
    @IBOutlet weak var smallUnit: UIImageView!
    @IBOutlet weak var leucine: UIImageView!
    @IBOutlet weak var serine: UIImageView!
    @IBOutlet weak var mRNA: UIImageView!
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startAnimation()
        setDefaults()
        
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
        aSiteLabel.hidden = false
        pSiteLabel.hidden = false
        exitLabel.hidden = false
        tRNA2.frame.size.width = 29
        tRNA2.frame.size.height = 73
        tRNA3.frame.size.width = 29
        tRNA3.frame.size.height = 73
        serine.frame.size.width = 15
        serine.frame.size.height = 73
        leucine.frame.size.width = 15
        leucine.frame.size.height = 73
        tRNA2.frame.origin.y = 28
        tRNA2.frame.origin.x = 288
        tRNA3.frame.origin.y = 28
        tRNA3.frame.origin.x = 328
        serine.frame.origin.x = 296
        serine.frame.origin.y = 20
        leucine.frame.origin.y = 20
        leucine.frame.origin.x = 337
    }
    func startAnimation(){
        moveIntoASite(self.tRNA2, amino: self.leucine, bond: self.bond2)

        
    }
    func moveIntoASite(tRNA: UIImageView, amino: UIImageView, bond: UIImageView){
        shiftRibosome()
    }
    func shiftRibosome(){
        //self.aSiteLabel.hidden = true
        self.exitLabel.hidden = true
        self.pSiteLabel.hidden = true
        self.count += 1
        UIView.animateWithDuration(0.5, delay: 0.33, options: [], animations: {
            if self.count != 1 {
                var largeUnitFrame = self.largeUnit.frame
                largeUnitFrame.origin.x += self.tRNA1.frame.width - 10
                self.largeUnit.frame = largeUnitFrame
            }

            var aSiteFrame = self.aSiteLabel.frame
     
           
            var smallUnitFrame = self.smallUnit.frame
            smallUnitFrame.origin.x = self.largeUnit.frame.origin.x
            aSiteFrame.origin.x = self.largeUnit.frame.origin.x + (self.largeUnit.frame.width - 65)
            
            
            self.aSiteLabel.frame = aSiteFrame
            self.smallUnit.frame = smallUnitFrame
            
            }, completion: { finished in
                if self.count == 1{
                    self.removetRNA(self.tRNA1)
                }else if self.count == 2{
                    self.removetRNA(self.tRNA2)
                }
        })
    }
    func removetRNA(trna: UIImageView){
        UIView.animateWithDuration(0.4, delay: 0.2, options: [.CurveEaseIn], animations: {
            var tRNAFrame = trna.frame
            tRNAFrame.origin.y = self.view.frame.minY
            tRNAFrame.origin.x = self.view.frame.minX
            tRNAFrame.origin.y -= trna.frame.height
            trna.frame = tRNAFrame
            }, completion: {finished in
                if self.count == 1{
                    self.moveIntoASite(self.tRNA3, amino: self.serine, bond: self.bond3)
                }
        })
        
    }
}
