//
//  ahScene3.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 4/19/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import SceneKit
import UIKit

class ahScene3: SCNScene{
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
        sphereGeom.firstMaterial?.diffuse.contents = UIColor.blueColor()
        
        let connectionGeom = SCNBox(width: 70, height: 500, length: 70, chamferRadius: 27)
        
        
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
            
            
            //midpoint
            let midPointx = Float(xPosition + pointToNTerm.x) / 2.0
            let midPointy = Float(yPosition + pointToNTerm.y) / 2.0
            let midPointz = Float(zPosition + pointToNTerm.z) / 2.0
            
            // print("\(count): (\(xPosition), \(yPosition), \(zPosition))")
            
            //print("Midpoint between previous point: (\(midPointx), \(midPointy), \(midPointz))")
            
            
            
            sphereNode.position = SCNVector3(xPosition, yPosition, zPosition)
            connectionNode.position = SCNVector3(midPointx, midPointy, midPointz)
            pointToNTerm = SCNVector3(x: xPosition, y: yPosition, z: zPosition)
            
            connectionNode.eulerAngles = SCNVector3( 1.8, 0, 1.6)
            
            //position peptide bonds
            
            switch count{
            case 1:
                connectionNode.eulerAngles = SCNVector3( 0.5, -0.7, 1.76)
            case 2:
                connectionNode.eulerAngles = SCNVector3( (radians)/0.97, -0.3, 1.6)
            case 3:
                connectionNode.eulerAngles = SCNVector3( radians, 0, -(radians)/2)
            case 4:
                connectionNode.eulerAngles = SCNVector3( (radians)/0.5, -0.3, 1.2)
            case 5:
                connectionNode.eulerAngles = SCNVector3( 2.0, -0.3, 0.9)
            case 6:
                connectionNode.eulerAngles = SCNVector3( (radians)/2.5, 0.3, -radians * 1.75)
            case 7:
                connectionNode.eulerAngles = SCNVector3( radians, 0, -(radians)/2)
            case 8:
                connectionNode.eulerAngles = SCNVector3( -(radians)/4, 0, radians/1.5)
            case 9:
                connectionNode.eulerAngles = SCNVector3( (radians)/0.7, -0.3, 1.8)
            case 10:
                connectionNode.eulerAngles = SCNVector3( 2.0, 0, 1.9)
            case 11:
                connectionNode.eulerAngles = SCNVector3( 0.5, -0.7, 0.76)
            case 12:
                connectionNode.eulerAngles = SCNVector3( 1.8, 0, 1.6)
            case 13:
                connectionNode.eulerAngles = SCNVector3( -(radians)/1.5, -0.3, -1.0)
            case 14:
                connectionNode.eulerAngles = SCNVector3( 2.0, 0, 1.9)
            case 15:
                connectionNode.eulerAngles = SCNVector3( 0.5, -0.7, 0.76)
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
