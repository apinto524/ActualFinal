//
//  betaSheetScene.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/16/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import SceneKit
import UIKit

class betaSheetScene: SCNScene {
    override init(){
        super.init()
        createScene()
       
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(code:) has not been implemented")
    }

    func createScene(){
        let point = SCNPyramid(width: 5.0, height: 5.0, length: 1.0)
        let length = SCNBox(width: 2.0, height: 15.0, length: 1.0, chamferRadius: 0)
        
        let circleCenter = CGPointMake(-7.5,0)
        let circleRadius = CGFloat(5)
        
        let start = CGFloat(M_PI - 0.1)
        let end = start + CGFloat(M_PI/2)
        let circlePath = UIBezierPath(arcCenter: circleCenter, radius: circleRadius, startAngle: start, endAngle: end, clockwise: true)

        let circleShape = SCNShape(path: circlePath, extrusionDepth: 0.1)
        let circleNode = SCNNode(geometry: circleShape)
        self.rootNode.addChildNode(circleNode)
        
        point.firstMaterial?.diffuse.contents = UIColor.greenColor()
        length.firstMaterial?.diffuse.contents = UIColor.greenColor()
        var count = 0
        
        let label = SCNText(string: "Antiparallel Sheets", extrusionDepth: 1)
        label.font = UIFont(name: "Helvetica", size: 1.5)
        let labelNode = SCNNode(geometry: label)
        labelNode.position.y = -12.5
        labelNode.position.x = -7
        self.rootNode.addChildNode(labelNode)
        
        while count < 6{
            let pointNode = SCNNode(geometry: point)
            let lengthNode = SCNNode(geometry: length)
            
            
            lengthNode.eulerAngles = SCNVector3(x: 0, y: 0 , z: 1.5)
            pointNode.eulerAngles = lengthNode.eulerAngles
           
            switch count{
            case 0:
                pointNode.position.x -= Float(length.height) / 2.0
                
            case 1:
                pointNode.position.x += Float(length.height) / 2.0
                pointNode.eulerAngles = SCNVector3(x: 3.0 , y: 0, z: 1.5 )
                pointNode.position.y -= 5
                lengthNode.position.y -= 5
            case 2:
                pointNode.position.x -= Float(length.height) / 2.0

                pointNode.position.y -= 10
                lengthNode.position.y -= 10
            case 3:
                pointNode.position.x += Float(length.height) / 2.0
                pointNode.eulerAngles = SCNVector3(x: 3.0 , y: 0, z: 1.5 )

                pointNode.position.y -= 15
                lengthNode.position.y -= 15
            case 4:
                pointNode.position.x -= Float(length.height) / 2.0

                pointNode.position.y -= 20
                lengthNode.position.y -= 20
            case 5:
                pointNode.position.x += Float(length.height) / 2.0
                pointNode.eulerAngles = SCNVector3(x: 3.0 , y: 0, z: 1.5 )

                pointNode.position.y -= 25
                lengthNode.position.y -= 25
            default:
                print("error")
            }
            
                print("\(count) \(pointNode.position)")
            
            
            self.rootNode.addChildNode(pointNode)
            self.rootNode.addChildNode(lengthNode)
            
            count += 1
            
        }
    }
}
