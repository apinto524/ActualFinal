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
        self.view.addGestureRecognizer(longHold)

    }
    override func viewWillAppear(animated: Bool) {
        addAlert()
    }
    func addAlert(){
        let controller = UIAlertController()
        controller.title = "About Alpha Helices"
        controller.message = "Alpha Helices ......"
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
        
    }
    
    
}
