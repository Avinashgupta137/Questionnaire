//
//  UIView+Extension.swift
//  1QuestionChild
//
//  Created by IPS on 25/06/21.
//

//import UIKit
//
////@IBDesignable
//class ShadowBackgroundView:UIView{
//    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//    }
//    
//}
//
//// MARK: - Extension ( Style - Corner, Border-Color, Border-Width )
//extension UIView{
//    
//    //Mark : Action Method Function
//    typealias ReturnGestureAction = (() -> Void)?
//    fileprivate struct AssociatedObjectKeys {
//        static var tapGestureRecognizer = "MediaViewerAssociatedObjectKey_mediaViewer1"
//    }
//    
//    @IBInspectable var cornerRadius: CGFloat{
//        get{ return self.cornerRadius}
//        set{
//            self.layer.cornerRadius = newValue
//        }
//    }
//    @IBInspectable var borderColor: UIColor? {
//        get {
//            guard let cgColor = layer.borderColor else {
//                return nil
//            }
//            return UIColor(cgColor: cgColor)
//        }
//        set { layer.borderColor = newValue?.cgColor }
//    }
//    @IBInspectable var borderWidth: CGFloat {
//        get {
//            return layer.borderWidth
//        }
//        set {
//            layer.borderWidth = newValue
//        }
//    }
//}
//
