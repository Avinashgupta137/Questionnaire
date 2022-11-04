//
//  NameValidation.swift
//  Questionnaire
//
//  Created by MAC OS 4 on 08/04/22.
//

import Foundation
import UIKit
extension String{
    
    func validName() -> Bool{
        let inputRegEx = "^[a-zA-Z\\_]{2,18}$"
        let inputpred = NSPredicate(format: "SELF MATCHES %@", inputRegEx)
        return inputpred.evaluate(with: self)
        
    }
    //  "^[a-zA-Z\\_]{2,25}$"
    
    func applyPredicateOnRegex(regexStr: String) -> Bool{
        let trimmedString = self.trimmingCharacters(in: .whitespaces)
        let validateOtherString = NSPredicate(format: "SELF MATCHES %@", regexStr)
        let isValidateOtherString = validateOtherString.evaluate(with: trimmedString)
        return isValidateOtherString
    }
}
