//
//  UIView+Ext.swift
//  SwiftExtension
//
//  Created by Noor ul Ain Ali on 13/07/2020.
//

import UIKit

extension UIView {
    
    func roundAllCorners(with radius: CGFloat) {
        self.layer.cornerRadius = radius
    }
    
    func embeddingViewController() -> UIViewController? {
        var viewResponder: UIResponder = self
        while !(viewResponder.isKind(of: UIViewController.self)) {
            if let nextResponder = viewResponder.next {
                viewResponder = nextResponder
            } else {
                break
            }
        }
        return viewResponder as? UIViewController
    }
    
    var viewAsImage: UIImage {
        return UIGraphicsImageRenderer(size: bounds.size).image { _ in
            drawHierarchy(in: bounds, afterScreenUpdates: true)
        }
    }

}

