//
//  UIColor+Palette.swift
//  Classik
//
//  Created by Mark on 1/21/16.
//  Copyright © 2016 MEB. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func colorFromRGB(r: Int, g: Int, b: Int) -> UIColor {
        return UIColor(red: CGFloat(Float(r) / 255), green: CGFloat(Float(g) / 255), blue: CGFloat(Float(b) / 255), alpha: 1)
    }
    
    class func palette() -> [UIColor] {
        let palette = [
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80),
            UIColor.colorFromRGB(34, g: 49, b: 63),
            UIColor.colorFromRGB(44, g: 62, b: 80)
            
            
//            UIColor.colorFromRGB(0, g: 85, b: 0),
//            UIColor.colorFromRGB(85, g: 170, b: 85)
            
            
//            UIColor.colorFromRGB(0, g: 85, b: 0),
//            UIColor.colorFromRGB(255, g: 170, b: 0),
//            UIColor.colorFromRGB(255, g: 85, b: 0),
//            UIColor.colorFromRGB(0, g: 85, b: 85),
//            UIColor.colorFromRGB(0, g: 85, b: 255),
//            UIColor.colorFromRGB(170, g: 170, b: 255),
//            UIColor.colorFromRGB(85, g: 0, b: 0),
//            UIColor.colorFromRGB(170, g: 85, b: 85),
//            UIColor.colorFromRGB(170, g: 255, b: 0),
//            UIColor.colorFromRGB(85, g: 170, b: 255),
//            UIColor.colorFromRGB(0, g: 170, b: 170)
        ]
        return palette
    }
    
    class func colorFromHex(rgbValue:UInt32, alpha:Double=1.0) -> UIColor {
        let red = CGFloat((rgbValue & 0xFF0000) >> 16)/256.0
        let green = CGFloat((rgbValue & 0xFF00) >> 8)/256.0
        let blue = CGFloat(rgbValue & 0xFF)/256.0
        
        return UIColor(red:red, green:green, blue:blue, alpha:CGFloat(alpha))
    }
    
}

