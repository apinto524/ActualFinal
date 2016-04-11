//
//  SecondaryStructureVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 3/19/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit
import SceneKit

class SecondaryStructureVC: UIViewController{
    

    @IBOutlet weak var betaSheet: SCNView!
    @IBOutlet weak var alphahelix: SCNView!

    override func viewDidLoad() {
        //set alpha helix scene to view
        alphahelix.scene = alphaHelixScene()
        alphahelix.backgroundColor = UIColor.blackColor()
        alphahelix.autoenablesDefaultLighting = true

        alphahelix.allowsCameraControl = true
        self.view.backgroundColor = UIColor(patternImage: UIImage( imageLiteral: "background"))
    }
}