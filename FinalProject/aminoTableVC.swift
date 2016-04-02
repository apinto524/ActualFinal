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
                    aminoContentStruct(name: "Alanine", threeLetterAbrv: "Ala", singleLetterAbrv: "A", sideChain: UIImage(named: "alaninePic"),  extendedProperties: "Alanine is a hydrophobic amino acid and nonpolar.", property: "Hydrophobic"),
                    aminoContentStruct(name: "Arginine", threeLetterAbrv: "Arg", singleLetterAbrv: "R", sideChain: UIImage(named: "argininePic"),  extendedProperties: "Arginine is a basic amino acid. It is positively charged.", property: "Basic"),
                    aminoContentStruct(name: "Asparagine", threeLetterAbrv: "Asn", singleLetterAbrv: "N", sideChain: UIImage(named: "asparaginePic"), extendedProperties: "Asparagine is the amide of aspartic acid and polar. It is hydrophillic.", property: "Polar"),
                    aminoContentStruct(name: "Aspartic Acid", threeLetterAbrv: "Asp", singleLetterAbrv: "D", sideChain: UIImage(named: "asparticAcidPic"), extendedProperties: "Aspartic Acid is an acidic amino acid. It is negatively charged.", property: "Acidic"),
                    aminoContentStruct(name: "Cysteine", threeLetterAbrv: "Cys", singleLetterAbrv: "C", sideChain: UIImage(named: "cysteinePic"),  extendedProperties: "Cysteine is a sulfur containing amino acid. Cysteine can react with itself to form an oxidized dimer by formation of a disulfide bond resulting in cystine.", property: "Special"),
                    aminoContentStruct(name: "Glutamic Acid", threeLetterAbrv: "Glu", singleLetterAbrv: "E", sideChain: UIImage(named: "glutamicAcidPic"), extendedProperties: "Glutamic acid is an acidic amino acid. It has a negative charge.", property: "Acidic"),
                    aminoContentStruct(name: "Glutamine", threeLetterAbrv: "Gln", singleLetterAbrv: "Q", sideChain: UIImage(named: "glutaminePic"), extendedProperties: "Glutamine is the amide of glutamicAcid and is polar. it is hydrophillic", property: "Polar"),
                    aminoContentStruct(name: "Glycine", threeLetterAbrv: "Gly", singleLetterAbrv: "G", sideChain: UIImage(named: "glycinePic"),  extendedProperties: "Glysine is the smallest amino acid with only a hydrogen for its side chain. It is hydrophobic and nonpolar.", property: "Special"),
                    aminoContentStruct(name: "Histidine", threeLetterAbrv: "His", singleLetterAbrv: "H", sideChain: UIImage(named: "histidinePic"), extendedProperties: "Histidine is a basic amino acid. It is positively charged.", property: "Basic"),
                    aminoContentStruct(name: "Isoleucine", threeLetterAbrv: "Ile", singleLetterAbrv: "I", sideChain: UIImage(named: "isoleucinePic"), extendedProperties: "Isoleucine is hydrophobic and nonpolar.", property: "Hydrophobic"),
                    aminoContentStruct(name: "Leucine", threeLetterAbrv: "Leu", singleLetterAbrv: "L", sideChain: UIImage(named: "leucinePic"),  extendedProperties: "Leucine is hydrophobic and nonpolar.", property: "Hydrophobic"),
                    aminoContentStruct(name: "Lysine", threeLetterAbrv: "Lys", singleLetterAbrv: "K", sideChain: UIImage(named: "lysinePic"),  extendedProperties: "Lysine is a basic amino acid. It is positively charged.", property: "Basic"),
                    aminoContentStruct(name: "Methionine", threeLetterAbrv: "Met", singleLetterAbrv: "M", sideChain: UIImage(named: "methioinePic"),  extendedProperties: "Methionine is a hydrophobic, sulfur containing amino acid. It is nonpolar.", property: "Special"),
                    aminoContentStruct(name: "Phenylalanine", threeLetterAbrv: "Phe", singleLetterAbrv: "F", sideChain: UIImage(named: "phenylalaninePic"), extendedProperties: "Phenylalanine is an aromatic amino acid. It is hydrophobic and nonpolar.", property: "Aromatic"),
                    aminoContentStruct(name: "Proline", threeLetterAbrv: "Pro", singleLetterAbrv: "P", sideChain: UIImage(named: "prolinePic"),  extendedProperties: "Proline's side chain attaches itself to the main chain's amide goup. Proline is nonpolar and cyclic.", property: "Special"),
                    aminoContentStruct(name: "Serine", threeLetterAbrv: "Ser", singleLetterAbrv: "S", sideChain: UIImage(named: "serinePic"),  extendedProperties: "Serine is a polar amino acid and hydrophillic.", property: "Polar"),
                    aminoContentStruct(name: "Threonine", threeLetterAbrv: "Thr", singleLetterAbrv: "T", sideChain: UIImage(named: "threoninePic"),  extendedProperties: "Threonine is a polar amino acid, hydrophillic. ", property: "Polar"),
                    aminoContentStruct(name: "Tryptophan", threeLetterAbrv: "Trp", singleLetterAbrv: "W", sideChain: UIImage(named: "tryptophanPic"), extendedProperties: "Tryptophan is an aromatic amino acid. It is nonpolar and hydrophobic.", property: "Aromatic"),
                    aminoContentStruct(name: "Tyrosine", threeLetterAbrv: "Tyr", singleLetterAbrv: "Y", sideChain: UIImage(named: "tyrosinePic"),  extendedProperties: "Tyrosine is aromatic, hydrophobic and nonpolar.", property: "Aromatic"),
                    aminoContentStruct(name: "Valine", threeLetterAbrv: "Val", singleLetterAbrv: "V", sideChain: UIImage(named: "valinePic"),  extendedProperties: "Valine is hydrophobic and polar.", property: "Polar")
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
        return self.aminoInformationArray.count
    }
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

}

