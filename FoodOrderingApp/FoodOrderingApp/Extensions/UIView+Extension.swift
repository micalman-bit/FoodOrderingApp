//
//  UIView+Extension.swift
//  FoodOrderingApp
//
//  Created by Andrey Samchenko on 08.01.2022.
//

import UIKit

extension UIView {
    @IBInspectable var cornerRadius: CGFloat {
        get { return cornerRadius }
        set { self.layer.cornerRadius = newValue }
    }
}
