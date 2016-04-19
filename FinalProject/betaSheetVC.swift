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
    override func viewDidLoad() {
        super.viewDidLoad()
        let sceneView = self.view as! SCNView
        sceneView.scene = betaSheetScene()
        sceneView.backgroundColor = UIColor.blackColor()
        sceneView.autoenablesDefaultLighting = true
        sceneView.allowsCameraControl = true
    }
}
