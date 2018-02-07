//
//  StringArray.swift
//  StringToArray
//
//  Created by Sight Syndicate on 1/29/18.
//  Copyright © 2018 Zach Christensen. All rights reserved.
//

import Foundation


class StringArray {
    
    var myString : String
    var myStringArray : Array <Any>{
        return Array(myString)
    }
    
    init(string : String) {
        self.myString = string
        print(myStringArray)
    }
    
    func evArray(array : Array<Any>) {
        for char in array {
            var x = String(describing: char)
            
        }
    }
}

