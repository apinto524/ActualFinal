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
        count += 1
 
        let connectionPath = UIBezierPath(arcCenter: <#T##CGPoint#>, radius: 3, startAngle: <#T##CGFloat#>, endAngle: <#T##CGFloat#>, clockwise: <#T##Bool#>)
        let connectorGeom = SCNShape(path: <#T##UIBezierPath?#>, extrusionDepth: <#T##CGFloat#>)
        
        let sphereGeom = SCNSphere(radius: 1.5)
        sphereGeom.firstMaterial?.diffuse.contents = UIColor.redColor()
        
        let radius = 3.0
        var radians = Double(0)
        var yPosition = Float(5.4)
        
        while count <= 20 {
            if radians >= 2{
                radians -= 2
            }
            let sphereNode = SCNNode(geometry: sphereGeom)
            let angle = Double(radians * M_PI)
            
            let xPosition = Float(radius * cos(angle))
            let zPosition = Float(radius * sin(angle))
            
            sphereNode.position = SCNVector3(xPosition, yPosition, zPosition)
            
            count += 1
            radians += 0.5556
            yPosition -= 1.35
            
            self.rootNode.addChildNode(sphereNode)
        }


    }
}
