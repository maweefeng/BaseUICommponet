//
//  CNMacroSwift.swift
//  MainProject
//
//  Created by cnsunrun on 2018/1/5.
//  Copyright © 2018年 王朋. All rights reserved.
//
import Foundation
import UIKit

var CNColorWithHex: (NSInteger) -> UIColor = {hex in
    return CNColorWithHexA(hex, 1)
}

var CNColorWithHexA: (NSInteger, CGFloat) -> UIColor = {(hex, alpha) in
    let red = ((CGFloat)((hex & 0xFF0000) >> 16)) / 255.0
    let green = ((CGFloat)((hex & 0xFF00) >> 8)) / 255.0
    let blue = ((CGFloat)(hex & 0xFF)) / 255.0
    
    return UIColor(red: red , green: green, blue: blue, alpha: alpha)
}

var CNRGBAColor: (CGFloat, CGFloat, CGFloat, CGFloat) -> UIColor = {red, green, blue, alpha in
    return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: alpha)
}



// MARK: - 常用宽高
/// 屏幕Bounds
let kScreenBounds = UIScreen.main.bounds
/// 屏幕高度
let kScreenHeight = UIScreen.main.bounds.size.height
/// 屏幕宽度
let kScreenWidth = UIScreen.main.bounds.size.width

