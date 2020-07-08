//
//  UIColor+Ext.swift
//  SwiftExtension
//
//  Created by Noor ul Ain Ali on 08/07/2020.
//

import UIKit

extension UIColor {

    convenience init(fromR: CGFloat, G: CGFloat, B: CGFloat, alpha: CGFloat = 1) {
        self.init(red: fromR/255.0, green: G/255.0, blue: B/255.0, alpha: alpha)
    }

}
