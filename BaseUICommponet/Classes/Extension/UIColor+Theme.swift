//
//  UIColor+Theme.swift
//  MVVMSwiftExample
//
//  Created by Dino Bartosak on 27/09/16.
//  Copyright © 2016 Toptal. All rights reserved.
//

import UIKit

extension UIColor {
    
    //返回随机颜色
    class var randomColor: UIColor {
        get {
            let red = CGFloat(arc4random()%256)/255.0
            let green = CGFloat(arc4random()%256)/255.0
            let blue = CGFloat(arc4random()%256)/255.0
            return UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        }
    }
    
    
    // MARK: Private
    
    // MARK: Private
    fileprivate static func rgba(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat, _ a: CGFloat) -> UIColor {
        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: a)
    }
    
    fileprivate static func rgb(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
        return rgba(r, g, b, 1.0)
    }
    
    // MARK: Public
    static let themeColor = CNColorWithHex(0xEE6B00)
    static let borderColor = CNColorWithHex(0xE5E5EA)
    static let backgroundColor = CNColorWithHex(0xF5F5F5)
    static let scoreColor = rgb(255, 193, 45)
    static let textColor = CNColorWithHex(0x1A1A1A)
    static let playerBackgroundColor = rgb(84, 77, 126)
    static let brightPlayerBackgroundColor = rgba(101, 88, 156, 0.5)
    
    static let textColor333 = CNColorWithHex(0x333333)
    static let textColor666 = CNColorWithHex(0x666666)
    static let textColor999 = CNColorWithHex(0x999999)
    
    static let lineColor = CNColorWithHex(0xe6e6e6)
}
