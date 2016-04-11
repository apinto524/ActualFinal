//
//  alphaHelixScene.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/2/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//


import SceneKit
import UIKit

class alphaHelixScene: SCNScene{
    var count = 0
    override init(){
        super.init()
        createScene()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(code:) has not been implemented")
    }
    
    func createScene(){
        //keep track of number of amino acids
        count += 1
        
        //create a sphere
        let sphereGeom = SCNSphere(radius: 1.5)
        sphereGeom.firstMaterial?.diffuse.contents = UIColor.redColor()
  
        //set distance from y axis each sphere will be
        let radius = 3.0
        //set start position of circle around y axis
        var radians = Double(0)
        //set starting y position
        var yPosition = Float(5.4)
        
        
        //iterates through and creates 19 amino acids
        while count <= 20 {
            //ensures radians stays in usuable form of under 2 pi
            if radians >= 2{
                radians -= 2
            }
            //create location of sphere
            let sphereNode = SCNNode(geometry: sphereGeom)
            //change radian number to radian angle
            let angle = Double(radians * M_PI)
            //convert polar coordinates to cartesian coordinates
            var xPosition = Float(radius * cos(angle))
            var zPosition = Float(radius * sin(angle))
            
            //set position of sphere
            sphereNode.position = SCNVector3(xPosition, yPosition, zPosition)
            
            
            //add to count
            
            count += 1
            
            //add 100 to radians
            radians += 0.5556
            //every fifth amino acid is 5.4 angstroms from the first, therefore shift the y position 5.4/4
            yPosition -= 1.35
            
            self.rootNode.addChildNode(sphereNode)
            
            
        }


    }
}
