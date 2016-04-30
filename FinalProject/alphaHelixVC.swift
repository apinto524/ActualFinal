//
//  alphaHelixVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/3/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import UIKit
import SceneKit

class alphHelixVC: UIViewController{
   var sceneView = SCNView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
 
        //set alpha helix view
        sceneView = self.view as! SCNView
        sceneView.scene = alphaHelixScene()
        sceneView.backgroundColor = UIColor.blackColor()
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
        
        let tapGesture = UITapGestureRecognizer(target: self, action: "handleTap")
        tapGesture.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(tapGesture)
        
        let longHold = UILongPressGestureRecognizer(target: self, action: "handleHold")
        longHold.minimumPressDuration = 1.0
        self.view.addGestureRecognizer(longHold)

    }
    override func viewWillAppear(animated: Bool) {
        addAlert()
    }

    override func motionEnded(motion: UIEventSubtype, withEvent event: UIEvent!) {
        if motion == .MotionShake {
           sceneView.scene = alphaHelixScene()
        }
    }
    
    func addAlert(){
        let controller = UIAlertController()
        controller.title = "About Alpha Helices"
        controller.message = "Alpha Helices form to stabilize the protein structure. This structure forms hydrogen bonds within itself to enhance it's stability. Each turn of the alpha helix is made up of 3.6 amino acids, with 100 degrees seperating each amino acid. Between every fourth amino acid, a hydrogen bond forms of 5.4 Angstroms in length. The hydrogen bond forms between the first carboxyl group pointing down towards the fifth residue's amino group. This creates a macroscopic dipole moment."
        let gotitAction = UIAlertAction(title: "I got it", style: UIAlertActionStyle.Default, handler: {
            action in self.dismissViewControllerAnimated(true, completion: nil)

        })
        controller.addAction(gotitAction)
        self.presentViewController(controller, animated: true, completion: nil)
        

    }
    
    func handleTap(){
        sceneView.scene = ahScene2()
       
    }
    func handleHold(){
        sceneView.scene = ahScene3()
    }
    
    
}
