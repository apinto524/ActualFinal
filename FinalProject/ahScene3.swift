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
        let nTermlabel = SCNText(string: "Positive N Terminal", extrusionDepth: 20)
        nTermlabel.font = UIFont(name: "Helvetica", size: 70)
        let nTermNode = SCNNode(geometry: nTermlabel)
        nTermNode.position = SCNVector3(x: 450, y: 600, z: 0)
        self.rootNode.addChildNode(nTermNode)

        let cTermlabel = SCNText(string: "Negative C Terminal", extrusionDepth: 20)
        cTermlabel.font = UIFont(name: "Helvetica", size: 70)
        let cTermNode = SCNNode(geometry: cTermlabel)
        cTermNode.position = SCNVector3(x: 450, y: -1890, z: 0)
        self.rootNode.addChildNode(cTermNode)
       
        
      
        
        let connectionGeom = SCNBox(width: 70, height: 500, length: 70, chamferRadius: 27)
        
        
        let radius = 300.0
        var radians = Double(0)
        var yPosition = Float(540)
        var pointToNTerm = SCNVector3(x: 540, y: 800 , z: 0)
        
        while count < 20 {
            
            if radians >= 2{
                radians -= 2
            }
            let connectionNode = SCNNode(geometry: connectionGeom)
            var sphereNode = SCNNode()
            switch count{
            case 1:
                connectionNode.eulerAngles = SCNVector3( 0.5, -0.7, 1.76)
                let sphereGeom1 = SCNSphere(radius: 150)
                sphereGeom1.firstMaterial?.diffuse.contents = UIColor.blueColor()
                sphereNode = SCNNode(geometry: sphereGeom1)
            case 2:
                connectionNode.eulerAngles = SCNVector3( (radians)/0.97, -0.3, 1.6)
                let sphereGeom2 = SCNSphere(radius: 150)
                sphereGeom2.firstMaterial?.diffuse.contents = UIColor(red: 0.1, green: 0, blue: 0.9, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom2)
            case 3:
                connectionNode.eulerAngles = SCNVector3( radians, 0, -(radians)/2)
                let sphereGeom3 = SCNSphere(radius: 150)
                sphereGeom3.firstMaterial?.diffuse.contents = UIColor(red: 0.2, green: 0, blue: 0.8, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom3)
                
            case 4:
                connectionNode.eulerAngles = SCNVector3( (radians)/0.5, -0.3, 1.2)
                let sphereGeom4 = SCNSphere(radius: 150)
                sphereGeom4.firstMaterial?.diffuse.contents = UIColor(red: 0.25, green: 0, blue: 0.75, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom4)
                
            case 5:
                connectionNode.eulerAngles = SCNVector3( 2.0, -0.3, 0.9)
                let sphereGeom5 = SCNSphere(radius: 150)
                sphereGeom5.firstMaterial?.diffuse.contents = UIColor(red: 0.3, green: 0, blue: 0.7, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom5)
                
            case 6:
                connectionNode.eulerAngles = SCNVector3( (radians)/2.5, 0.3, -radians * 1.75)
                let sphereGeom6 = SCNSphere(radius: 150)
                sphereGeom6.firstMaterial?.diffuse.contents = UIColor(red: 0.35, green: 0, blue: 0.65, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom6)
               
            case 7:
                connectionNode.eulerAngles = SCNVector3( radians, 0, -(radians)/2)
                let sphereGeom7 = SCNSphere(radius: 150)
                sphereGeom7.firstMaterial?.diffuse.contents = UIColor(red: 0.4, green: 0, blue: 0.6, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom7)
                
            case 8:
                connectionNode.eulerAngles = SCNVector3( -(radians)/4, 0, radians/1.5)
                let sphereGeom8 = SCNSphere(radius: 150)
                sphereGeom8.firstMaterial?.diffuse.contents = UIColor(red: 0.45, green: 0, blue: 0.55, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom8)
                
            case 9:
                connectionNode.eulerAngles = SCNVector3( (radians)/0.7, -0.3, 1.8)
                let sphereGeom9 = SCNSphere(radius: 150)
                sphereGeom9.firstMaterial?.diffuse.contents = UIColor(red: 0.5, green: 0, blue: 0.5, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom9)
                
            case 10:
                connectionNode.eulerAngles = SCNVector3( 2.0, 0, 1.9)
                let sphereGeom10 = SCNSphere(radius: 150)
                sphereGeom10.firstMaterial?.diffuse.contents = UIColor(red: 0.55, green: 0, blue: 0.45, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom10)
                
            case 11:
                connectionNode.eulerAngles = SCNVector3( 0.5, -0.7, 0.76)
                
                let sphereGeom11 = SCNSphere(radius: 150)
                sphereGeom11.firstMaterial?.diffuse.contents = UIColor(red: 0.6, green: 0, blue: 0.4, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom11)
               
            case 12:
                connectionNode.eulerAngles = SCNVector3( 1.8, 0, 1.6)
                let sphereGeom12 = SCNSphere(radius: 150)
                sphereGeom12.firstMaterial?.diffuse.contents = UIColor(red: 0.65, green: 0, blue: 0.35, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom12)
                
            case 13:
                connectionNode.eulerAngles = SCNVector3( -(radians)/1.5, -0.3, -1.0)
                let sphereGeom13 = SCNSphere(radius: 150)
                sphereGeom13.firstMaterial?.diffuse.contents = UIColor(red: 0.7, green: 0, blue: 0.3, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom13)
    
                
            case 14:
                connectionNode.eulerAngles = SCNVector3( 2.0, 0, 1.9)
                
                let sphereGeom14 = SCNSphere(radius: 150)
                sphereGeom14.firstMaterial?.diffuse.contents = UIColor(red: 0.75, green: 0, blue: 0.25, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom14)
                
            case 15:
                connectionNode.eulerAngles = SCNVector3( 0.5, -0.7, 0.76)
                let sphereGeom15 = SCNSphere(radius: 150)
                sphereGeom15.firstMaterial?.diffuse.contents = UIColor(red: 0.8, green: 0, blue: 0.2, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom15)
             
                
            case 16:
                connectionNode.eulerAngles = SCNVector3( 1.6, -0.2, 0.86)
                
                let sphereGeom16 = SCNSphere(radius: 150)
                sphereGeom16.firstMaterial?.diffuse.contents = UIColor(red: 0.85, green: 0, blue: 0.15, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom16)
                
            case 17:
                connectionNode.eulerAngles = SCNVector3( (radians)/2.5, 0.3, -radians * 1.75)
                
                let sphereGeom17 = SCNSphere(radius: 150)
                sphereGeom17.firstMaterial?.diffuse.contents = UIColor(red: 0.9, green: 0, blue: 0.1, alpha: 1)
                 sphereNode = SCNNode(geometry: sphereGeom17)
            case 18:
                connectionNode.eulerAngles = SCNVector3( 1.0, -0.6, 0.6)
                let sphereGeom18 = SCNSphere(radius: 150)
                sphereGeom18.firstMaterial?.diffuse.contents = UIColor(red: 0.95, green: 0, blue: 0.05, alpha: 1)
                sphereNode = SCNNode(geometry: sphereGeom18)
               
                
            case 19:
                connectionNode.eulerAngles = SCNVector3( 2.0, -0.2, 1.9)
                let sphereGeom19 = SCNSphere(radius: 150)
                sphereGeom19.firstMaterial?.diffuse.contents = UIColor.redColor()
                sphereNode = SCNNode(geometry: sphereGeom19)
            default:
                print("need to fix")
            }
            

           
      
            
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
            
            //connectionNode.eulerAngles = SCNVector3( 1.8, 0, 1.6)
            
            //position peptide bonds
            
                        print(" ")
            
            
            count += 1
            radians += 0.5556
            yPosition -= 135
            
            self.rootNode.addChildNode(sphereNode)
            self.rootNode.addChildNode(connectionNode)
        }
        
        
    }
}
