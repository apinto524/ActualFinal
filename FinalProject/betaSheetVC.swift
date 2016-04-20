//
//  betaSheetVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/17/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

class betaSheetVC: UIViewController{
    var count = 1
    var sceneView = SCNView()
    override func viewDidLoad() {
        super.viewDidLoad()
        sceneView = self.view as! SCNView
        sceneView.scene = betaSheetScene()
        sceneView.backgroundColor = UIColor.blackColor()
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
        addAlert()
        
        let tapGesture = UITapGestureRecognizer(target: self, action: "handleTap")
        tapGesture.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(tapGesture)
    }
    func addAlert(){
        let controller = UIAlertController()
        controller.title = "About Beta Sheets"
        controller.message = "Beta Sheets ......"
        let gotitAction = UIAlertAction(title: "I got it", style: UIAlertActionStyle.Default, handler: {
            action in self.dismissViewControllerAnimated(true, completion: nil)
            
        })
        controller.addAction(gotitAction)
        self.presentViewController(controller, animated: true, completion: nil)
        
        
    }
    
    func handleTap(){
        if count % 2 == 0{
            sceneView.scene = betaSheet2()
        } else {
            sceneView.scene = betaSheetScene()
        }
        count += 1
    }
}
