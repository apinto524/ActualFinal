//
//  betaSheetScene.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/16/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import SceneKit

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
        
        point.firstMaterial?.diffuse.contents = UIColor.greenColor()
        length.firstMaterial?.diffuse.contents = UIColor.greenColor()
        var count = 0
        let connection = SCNTorus(ringRadius: 2, pipeRadius: 1)
     
        while count < 6{
            let pointNode = SCNNode(geometry: point)
            let lengthNode = SCNNode(geometry: length)
            let connectionNode = SCNNode(geometry: connection)
            
            
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
            

            
            
            self.rootNode.addChildNode(pointNode)
            self.rootNode.addChildNode(lengthNode)
            self.rootNode.addChildNode(connectionNode)
            count += 1
            
        }
    }
}
