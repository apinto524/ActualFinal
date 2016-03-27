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
    
    var aminoNames: [String] = ["Alanine", "Arginine", "Asparagine", "Aspartic Acid", "Cysteine", "Glutamine", "Glutamic Acid", "Glycine", "Histidine", "Isoleucine", "Leucine", "Lysine", "Methionine",  "Phenylalanine", "Proline", "Serine", "Threonine", "Tryptophan", "Tyrosine", "Valine"]
    var placeholderAmino: aminoContentStruct!
    var aminoInformationArray: [aminoContentStruct]!
    
//    init(){
//        aminoInformationArray = [
//            aminoContentStruct(name: "Alanine", threeLetterAbrv: "Ala", singleLetterAbrv: "A", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Arginine", threeLetterAbrv: "Arg", singleLetterAbrv: "R", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Asparagine", threeLetterAbrv: "Asn", singleLetterAbrv: "N", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Aspartic Acid", threeLetterAbrv: "Asp", singleLetterAbrv: "D", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Cysteine", threeLetterAbrv: "Cys", singleLetterAbrv: "C", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Glutamine", threeLetterAbrv: "Gln", singleLetterAbrv: "Q", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Glutamic Acid", threeLetterAbrv: "Glu", singleLetterAbrv: "E", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Glycine", threeLetterAbrv: "Gly", singleLetterAbrv: "G", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Histidine", threeLetterAbrv: "His", singleLetterAbrv: "H", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Isoleucine", threeLetterAbrv: "Ile", singleLetterAbrv: "I", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Leucine", threeLetterAbrv: "Leu", singleLetterAbrv: "L", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Lysine", threeLetterAbrv: "Lys", singleLetterAbrv: "K", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Methionine", threeLetterAbrv: "Met", singleLetterAbrv: "M", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Phenylalanine", threeLetterAbrv: "Phe", singleLetterAbrv: "F", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Proline", threeLetterAbrv: "Pro", singleLetterAbrv: "P", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Serine", threeLetterAbrv: "Ser", singleLetterAbrv: "S", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Threonine", threeLetterAbrv: "Thr", singleLetterAbrv: "T", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Tryptophan", threeLetterAbrv: "Trp", singleLetterAbrv: "W", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Tyrosine", threeLetterAbrv: "Tyr", singleLetterAbrv: "Y", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//            aminoContentStruct(name: "Valine", threeLetterAbrv: "Val", singleLetterAbrv: "V", sideChain: nil, backGroundColor: nil, extendedProperties: "", property: ""),
//        ]
//        super.init()
//    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.aminoNames.count
        
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell")!
        cell.textLabel?.text = self.aminoNames[indexPath.row].uppercaseString
        return cell
        
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        if indexPath.row == 0{
            let stepNodeController = self.storyboard!.instantiateViewControllerWithIdentifier("TranslationVC")as! TranslationVC
            self.navigationController!.pushViewController(stepNodeController, animated: true)
        }
        if indexPath.row == 1{
            let stepNodeController = self.storyboard!.instantiateViewControllerWithIdentifier("PrimaryStructureVC")as! PrimaryStructureVC
            self.navigationController!.pushViewController(stepNodeController, animated: true)
        }
        if indexPath.row == 2{
            let stepNodeController = self.storyboard!.instantiateViewControllerWithIdentifier("SecondaryStructureVC")as! SecondaryStructureVC
            self.navigationController!.pushViewController(stepNodeController, animated: true)
        }
        if indexPath.row == 3{
            let stepNodeController = self.storyboard!.instantiateViewControllerWithIdentifier("TertiaryQuaternaryStructVC")as! TertiaryQuaternaryStructVC
            self.navigationController!.pushViewController(stepNodeController, animated: true)
        }
    }

}

