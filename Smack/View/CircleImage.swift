//
//  CircleImage.swift
//  Smack
//
//  Created by Sergiy Sachuk on 11/14/17.
//  Copyright © 2017 Sergiy Sachuk. All rights reserved.
//

import UIKit

@IBDesignable
class CircleImage: UIImageView {

    override func awakeFromNib() {
       setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }

    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
}
