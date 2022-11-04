

import UIKit

class CustomButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setRadius()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setRadius()
    }
    func setRadius() {
        clipsToBounds = true
        layer.masksToBounds = false
        layer.cornerRadius = layer.bounds.height / 2
        layer.borderWidth = 5.0
        layer.borderColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 4, height: 4.0)
        layer.shadowOpacity = 2.0
        layer.shadowRadius = 4.0
        self.titleLabel?.font =  UIFont(name: "Arial", size: 45)
    }
}
