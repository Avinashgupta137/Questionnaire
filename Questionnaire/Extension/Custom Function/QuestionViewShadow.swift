//
//  QuestionViewShadow.swift
//  Questionnaire
//
//  Created by MAC OS 17 on 18/04/22.
//

import UIKit
class BottomShadow: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        ininitalSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        ininitalSetup()
    }
    private func ininitalSetup(){
        layer.shadowColor =  UIColor.darkGray.cgColor
        layer.shadowOffset = .zero
        layer.shadowOpacity = 1.00
        layer.masksToBounds = false
        layer.shouldRasterize = true
        layer.cornerRadius = 15.0
        layer.shadowRadius = 10.0
        layer.rasterizationScale = UIScreen.main.scale
    }
}
