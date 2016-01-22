//
//  MEBClassBlock.swift
//  Classik
//
//  Created by Mark on 1/22/16.
//  Copyright © 2016 MEB. All rights reserved.
//

import UIKit

class MEBClassBlock: MEBSession {
    
    class func allClassBlocks() -> [MEBClassBlock] {
        var classBlocks = [MEBClassBlock]()
        if let URL = NSBundle.mainBundle().URLForResource("Classiks", withExtension: "plist") {
            if let tutorialsFromPlist = NSArray(contentsOfURL: URL) {
                for dictionary in tutorialsFromPlist {
                    let classBlock = MEBClassBlock(dictionary: dictionary as! NSDictionary)
                    classBlocks.append(classBlock)
                }
            }
        }
        return classBlocks
    }
    
}