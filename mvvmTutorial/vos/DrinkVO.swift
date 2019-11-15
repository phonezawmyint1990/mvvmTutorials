//
//  DrinkVO.swift
//  mvvmTutorial
//
//  Created by Aung Ko Ko on 10/11/2019.
//  Copyright © 2019 Phone Zaw Myint. All rights reserved.
//

import Foundation
class DrinkVO: Codable{
    
    var id: Int = 0
    var name: String = ""
    var description: String = ""
    var image_url: String = ""
    var target_fg: Int = 0
    
    enum CodingKeys: String, CodingKey{
        case id,name,description,image_url,target_fg
    }
    
    
}
