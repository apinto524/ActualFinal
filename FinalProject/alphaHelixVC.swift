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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //set alpha helix view
        let sceneView = self.view as! SCNView
        sceneView.scene = alphaHelixScene()
        sceneView.backgroundColor = UIColor.blackColor()
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
    }
}
