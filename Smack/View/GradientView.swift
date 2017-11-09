//
//  GradientView.swift
//  Smack
//
//  Created by Sergiy Sachuk on 11/9/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import UIKit

@IBDesignable //will be able to work in storyboard
class GradientView: UIView {

    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2901960784, green: 0.3019607843, blue: 0.8470588235, alpha: 1) { //or you can use UIColor.blue
        didSet {
            self.setNeedsLayout()
        }
    }
    //variables will be able to be changed in the storyboard dinamically
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    //called whenever we change our variables above
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor] //you can add more colors like, eg topColor.cgColor
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
}
