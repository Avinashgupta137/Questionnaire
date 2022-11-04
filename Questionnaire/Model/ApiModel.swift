//
//  ApiModel.swift
//  Questionnaire
//
//  Created by MAC OS 4 on 08/04/22.
//

import Foundation

struct Questions:Decodable {
    let id: Int
    let Question: String
    let Answer: String
}
