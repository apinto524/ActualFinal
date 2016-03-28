//
//  aminoTableVC.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 3/25/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit


class aminoTableVC: UITableViewController  {
    
    let aminoNames: [String] = ["Alanine", "Arginine", "Asparagine", "Aspartic Acid", "Cysteine", "Glutamine", "Glutamic Acid", "Glycine", "Histidine", "Isoleucine", "Leucine", "Lysine", "Methionine",  "Phenylalanine", "Proline", "Serine", "Threonine", "Tryptophan", "Tyrosine", "Valine"]
    var placeholderAmino: aminoContentStruct!
    var aminoInformationArray: [aminoContentStruct]!

    override func viewDidLoad() {
        super.viewDidLoad()
        buildAminoArray()
        
    }


    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func buildAminoArray(){
                aminoInformationArray = [
                    aminoContentStruct(name: "Alanine", threeLetterAbrv: "Ala", singleLetterAbrv: "A", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Arginine", threeLetterAbrv: "Arg", singleLetterAbrv: "R", sideChain: nil, backGroundColor: UIColor.blueColor(), extendedProperties: "", property: "Basic"),
                    aminoContentStruct(name: "Asparagine", threeLetterAbrv: "Asn", singleLetterAbrv: "N", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Aspartic Acid", threeLetterAbrv: "Asp", singleLetterAbrv: "D", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Cysteine", threeLetterAbrv: "Cys", singleLetterAbrv: "C", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Glutamine", threeLetterAbrv: "Gln", singleLetterAbrv: "Q", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Glutamic Acid", threeLetterAbrv: "Glu", singleLetterAbrv: "E", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Glycine", threeLetterAbrv: "Gly", singleLetterAbrv: "G", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Histidine", threeLetterAbrv: "His", singleLetterAbrv: "H", sideChain: nil, backGroundColor: UIColor.blueColor(), extendedProperties: "", property: "Basic"),
                    aminoContentStruct(name: "Isoleucine", threeLetterAbrv: "Ile", singleLetterAbrv: "I", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Leucine", threeLetterAbrv: "Leu", singleLetterAbrv: "L", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Lysine", threeLetterAbrv: "Lys", singleLetterAbrv: "K", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: "Basic"),
                    aminoContentStruct(name: "Methionine", threeLetterAbrv: "Met", singleLetterAbrv: "M", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Phenylalanine", threeLetterAbrv: "Phe", singleLetterAbrv: "F", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Proline", threeLetterAbrv: "Pro", singleLetterAbrv: "P", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Serine", threeLetterAbrv: "Ser", singleLetterAbrv: "S", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Threonine", threeLetterAbrv: "Thr", singleLetterAbrv: "T", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Tryptophan", threeLetterAbrv: "Trp", singleLetterAbrv: "W", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Tyrosine", threeLetterAbrv: "Tyr", singleLetterAbrv: "Y", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                    aminoContentStruct(name: "Valine", threeLetterAbrv: "Val", singleLetterAbrv: "V", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
                ]
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel?.text = self.aminoInformationArray[indexPath.row].name
        cell.detailTextLabel?.text = self.aminoInformationArray[indexPath.row].property
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let selectedAmino = aminoInformationArray[indexPath.row]
        
        // Get the first node
        
        
        // Get a StoryNodeController from the Storyboard
        let storyNodeController = self.storyboard!.instantiateViewControllerWithIdentifier("aminoAcidVC")as! aminoAcidVC
        
        // Set the story node so that we will see the start of the story
        storyNodeController.aminoInformation = selectedAmino
        
        // Push the new controller onto the stack
        self.navigationController!.pushViewController(storyNodeController, animated: true)
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

}

