//
//  ViewShadow.swift
//  Questionnaire
//
//  Created by MAC OS 17 on 13/04/22.
//

import Foundation
import UIKit
extension UIViewController {
    public func setShadow(view: UIView)
    {
        view.layer.cornerRadius = 25
        view.layer.borderWidth = 0
        //        view.layer.borderColor = AppTextFieldBorderColor.cgColor
        
        //MARK:- Shade a view
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        view.layer.shadowRadius = 3.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.masksToBounds = false
    }
}
