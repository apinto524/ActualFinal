//
//  ahScene2.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/19/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import SceneKit
import UIKit

class ahScene2: SCNScene{
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
        let nTermlabel = SCNText(string: "N terminal", extrusionDepth: 20)
        nTermlabel.font = UIFont(name: "Helvetica", size: 70)
        let nTermNode = SCNNode(geometry: nTermlabel)
        nTermNode.position = SCNVector3(x: 450, y: 600, z: 0)
        self.rootNode.addChildNode(nTermNode)

        let cTermlabel = SCNText(string: "C Terminal", extrusionDepth: 20)
        cTermlabel.font = UIFont(name: "Helvetica", size: 70)
        let cTermNode = SCNNode(geometry: cTermlabel)
        cTermNode.position = SCNVector3(x: 450, y: -1890, z: 0)
        self.rootNode.addChildNode(cTermNode)
        
        let sphereGeom = SCNSphere(radius: 150)
        sphereGeom.firstMaterial?.diffuse.contents = UIColor.redColor()
        
        let connectionGeom = SCNBox(width: 70, height: 500, length: 70, chamferRadius: 27)
        
        
        let hydrogenBond = SCNBox(width: 20, height: 400, length: 20, chamferRadius: 50)
        hydrogenBond.firstMaterial?.diffuse.contents = UIColor.yellowColor()
        let hydrogenBondlabel = SCNText(string: "Hydrogen Bond", extrusionDepth: 30)
        hydrogenBondlabel.font = UIFont(name: "Helvetica", size: 70)
        let labelNode = SCNNode(geometry: hydrogenBondlabel)
        
        let radius = 300.0
        var radians = Double(0)
        var yPosition = Float(540)
        var pointToNTerm = SCNVector3(x: 540, y: 800 , z: 0)
        
        while count < 20 {
            
            if radians >= 2{
                radians -= 2
            }
            
            let sphereNode = SCNNode(geometry: sphereGeom)
            let connectionNode = SCNNode(geometry: connectionGeom)
            
            let angle = Double(radians * M_PI )
            // print("\(radians)pi theta")
            
            let xPosition = Float(radius * cos(angle))
            let zPosition = Float(radius * sin(angle))
            
            //add bonds
            let hydrogenBondNode = SCNNode(geometry: hydrogenBond)
            
            
            //midpoint between 2 consecutive amino acids
            let midPointx = Float(xPosition + pointToNTerm.x) / 2.0
            let midPointy = Float(yPosition + pointToNTerm.y) / 2.0
            let midPointz = Float(zPosition + pointToNTerm.z) / 2.0
            
            print("\(count)) X: \(xPosition), Y: \(yPosition), Z: \(zPosition)")
            
            sphereNode.position = SCNVector3(xPosition, yPosition, zPosition)
            connectionNode.position = SCNVector3(midPointx, midPointy, midPointz)
            pointToNTerm = SCNVector3(x: xPosition, y: yPosition, z: zPosition)
            
            connectionNode.eulerAngles = SCNVector3( 1.8, 0, 1.6)
            
            //position peptide bonds
            
            switch count{
            case 1:
                connectionNode.eulerAngles = SCNVector3( 0.5, -0.7, 1.76)
                hydrogenBondNode.position.x = 529/2
                hydrogenBondNode.position.y = 540/2
                hydrogenBondNode.position.z = 192/2
                hydrogenBondNode.eulerAngles = SCNVector3(-0.2, 0.2, 0)
                labelNode.position = hydrogenBondNode.position
                self.rootNode.addChildNode(labelNode)
                self.rootNode.addChildNode(hydrogenBondNode)
            case 2:
                connectionNode.eulerAngles = SCNVector3( (radians)/0.97, -0.3, 1.6)
                let midpointBetweenFifth = SCNVector3((-52 - 230)/2, (405 - 135) / 2, (295 + 193) / 2)
                hydrogenBondNode.position = midpointBetweenFifth
                self.rootNode.addChildNode(hydrogenBondNode)
    
            case 3:
                connectionNode.eulerAngles = SCNVector3( radians, 0, -(radians)/2)
                let midpointBetweenFifth = SCNVector3((-282 - 150)/2, 0, (-103 - 260) / 2)
                hydrogenBondNode.position = midpointBetweenFifth
                self.rootNode.addChildNode(hydrogenBondNode)
            case 4:
                connectionNode.eulerAngles = SCNVector3( (radians)/0.5, -0.3, 1.2)
                let midpointBetweenFifth = SCNVector3((150 + 282)/2, (135 - 405)/2, (-260 - 102) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 5:
                connectionNode.eulerAngles = SCNVector3( 2.0, -0.3, 0.9)
                let midpointBetweenFifth = SCNVector3((230 + 52)/2, (0 - 540)/2, (193 + 295) / 2)
                hydrogenBondNode.position = midpointBetweenFifth
                self.rootNode.addChildNode(hydrogenBondNode)
            case 6:
                connectionNode.eulerAngles = SCNVector3( (radians)/2.5, 0.3, -radians * 1.75)
                let midpointBetweenFifth = SCNVector3((-230 - 300)/2, (-135 - 675)/2, (193) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 7:
                connectionNode.eulerAngles = SCNVector3( radians, 0, -(radians)/2)
                let midpointBetweenFifth = SCNVector3((-150 + 53)/2, (-270 - 810)/2, (-260 - 295) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 8:
                connectionNode.eulerAngles = SCNVector3( -(radians)/4, 0, radians/1.5)
                let midpointBetweenFifth = SCNVector3((282 + 281)/2, (-405 - 945)/2, (-102 + 103) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 9:
                connectionNode.eulerAngles = SCNVector3( (radians)/0.7, -0.3, 1.8)
                let midpointBetweenFifth = SCNVector3((52 - 150)/2, (-540 - 1080)/2, (296 + 296) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 10:
                connectionNode.eulerAngles = SCNVector3( 2.0, 0, 1.9)
                let midpointBetweenFifth = SCNVector3((-300 - 229)/2, (-675 - 1215)/2, (0 - 193) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 11:
                connectionNode.eulerAngles = SCNVector3( 0.5, -0.7, 0.76)
                let midpointBetweenFifth = SCNVector3((52 + 230)/2, (-810 - 1350)/2, (-295 - 192) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 12:
                connectionNode.eulerAngles = SCNVector3( 1.8, 0, 1.6)
                let midpointBetweenFifth = SCNVector3((282 + 150)/2, (-945 - 1485)/2, (103 + 260) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 13:
                connectionNode.eulerAngles = SCNVector3( -(radians)/1.5, -0.3, -1.0)
                let midpointBetweenFifth = SCNVector3((-150 - 282)/2, (-1080 - 1620)/2, (260 + 102) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 14:
                connectionNode.eulerAngles = SCNVector3( 2.0, 0, 1.9)
                let midpointBetweenFifth = SCNVector3((-229 - 51)/2, (-1215 - 1755)/2, (-193 - 296) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 15:
                connectionNode.eulerAngles = SCNVector3( 0.5, -0.7, 0.76)
                let midpointBetweenFifth = SCNVector3((230 + 300)/2, (-1350 - 1890)/2, (-192 - 1) / 2)
                hydrogenBondNode.position = midpointBetweenFifth

                self.rootNode.addChildNode(hydrogenBondNode)
            case 16:
                connectionNode.eulerAngles = SCNVector3( 1.6, -0.2, 0.86)
            case 17:
                connectionNode.eulerAngles = SCNVector3( (radians)/2.5, 0.3, -radians * 1.75)
            case 18:
                connectionNode.eulerAngles = SCNVector3( 1.0, -0.6, 0.6)
            case 19:
                connectionNode.eulerAngles = SCNVector3( 2.0, -0.2, 1.9)
            default:
                print("need to fix")
            }
            
            print(" ")
            
            
            count += 1
            radians += 0.5556
            yPosition -= 135
            
            self.rootNode.addChildNode(sphereNode)
            self.rootNode.addChildNode(connectionNode)
        }
        
        
    }
}
