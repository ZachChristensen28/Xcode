//
//  StringArrayTest.swift
//  StringToArray
//
//  Created by Sight Syndicate on 1/31/18.
//  Copyright © 2018 Zach Christensen. All rights reserved.
//

import Foundation

let problem = StringArray(string: "1533.2+26.7173-1.4964+5715.99+1.92565")


let x = problem.evString()
var y = problem.arrayToAnswer(theArray: x)
