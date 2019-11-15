//
//  ErrorResponse.swift
//  mvvmTutorial
//
//  Created by Aung Ko Ko on 10/11/2019.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import Foundation
class ErrorResponse: Codable{
    var code : String = ""
    var message : String = ""
    
    enum CodingKeys: String, CodingKey{
        case code,message
    }
}

