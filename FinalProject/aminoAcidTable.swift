//
//  aminoAcidTable.swift
//  FinalProject
//
//  Created by Alexandria Pinto on 3/23/16.
//  Copyright © 2016 Alexandria Pinto. All rights reserved.
//

import Foundation
import UIKit

struct AminoAcidTitle{
    var name: String
    var property: String
    var imageText: String
    
}


class aminoAcidTable: UITableViewController{

    
    
//    let allAminos = [
//        AminoAcidTitle(name: "Alanine", property: "Nonpolar", imageText: "Ala"),
//        AminoAcidTitle(name: "Arginine", property: "Basic", imageText: "Arg"),
//        AminoAcidTitle(name: "Asparagine", property: "Polar", imageText: "Asn"),
//        AminoAcidTitle(name: "Aspartic Acid", property: "Acid", imageText: "Asp"),
//        AminoAcidTitle(name: "Cysteine", property: "Polar", imageText: "Cys"),
//        AminoAcidTitle(name: "Glutamine", property: "Polar", imageText: "Gln"),
//        AminoAcidTitle(name: "Glutamic Acid", property: "Acid", imageText: "Glu"),
//        AminoAcidTitle(name: "Glycine", property: "Nonpolar", imageText: "Gly"),
//        AminoAcidTitle(name: "Histidine", property: "Basic", imageText: "His"),
//        AminoAcidTitle(name: "Isoleucine", property: "Nonpolar", imageText: "Ile"),
//        AminoAcidTitle(name: "Leucine", property: "Nonpolar", imageText: "leusine"),
//        AminoAcidTitle(name: "Lysine", property: "", imageText: "Lys"),
//        AminoAcidTitle(name: "Methionine", property: "Nonpolar", imageText: "Met"),
//        AminoAcidTitle(name: "Phenylalanine", property: "Aromatic", imageText: "Phe"),
//        AminoAcidTitle(name: "Proline", property: "Nonpolar", imageText: "Pro"),
//        AminoAcidTitle(name: "Serine", property: "Polar", imageText: "serine"),
//        AminoAcidTitle(name: "Threonine", property: "Polar", imageText: "Thr"),
//        AminoAcidTitle(name: "Tryptophan", property: "Aromatic", imageText: "Trp"),
//        AminoAcidTitle(name: "Tyrosine", property: "Aromatic", imageText: "Tyr"),
//        AminoAcidTitle(name: "Valine", property: "Nonpolar", imageText: "valine"),
//        
//    ]
//    
//    var selectedAmino: String = ""
//    
//    @IBOutlet weak var nameofAA: UILabel!
//    @IBOutlet weak var aminoProperty: UILabel!
    
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view, typically from a nib.
            
        }
    
        override func didReceiveMemoryWarning() {
            super.didReceiveMemoryWarning()
            // Dispose of any resources that can be recreated.
        }
        
        override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 20
        }
//    
//       override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//            let cell = self.tableView.dequeueReusableCellWithIdentifier("Cell")!
////            let amino = allAminos[indexPath.row]
//////            cell.detailTextLabel?.text = amino.property
//////            cell.textLabel?.text = amino.name
//
//            return cell
//
//        }
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
////        var aminoVC = segue.destinationViewController as! aminoAcidVC
////        aminoVC.name = selectedAmino
//        
//    }
//        override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//            // Get the selected adventure
//   
//            
//            //selectedAmino = allAminos[indexPath.row].name
//            
//            // Get a StoryNodeController from the Storyboard
//            let informationNodeController = self.storyboard!.instantiateViewControllerWithIdentifier("aminoAcidVC")as! aminoAcidVC
//            
//            // Push the new controller onto the stack
//            self.navigationController!.pushViewController(informationNodeController, animated: true)
//        }
//

    
    
    
}



