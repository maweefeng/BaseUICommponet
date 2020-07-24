//
//  UIView+Reddot.swift
//  BaseUICommponet
//
//  Created by 尚软科技 on 2020/7/24.
//  Copyright © 2020 小马科技. All rights reserved.
//

import UIKit
import SnapKit
extension UIView{
    /// 添加红点
    /// - Parameter sideLength: 红点的边长
    func addRedDot(sideLength:CGFloat = 5){
        let redSpot = UIView()
        redSpot.backgroundColor = .red
        redSpot.layer.cornerRadius = sideLength
        self.addSubview(redSpot)
        redSpot.snp.makeConstraints { (m) in
            m.trailing.top.equalToSuperview()
            m.width.height.equalTo(sideLength*2)
        }
    }
}



