//
//  CalculatorModelTester.swift
//  Calculator
//
//  Created by Sight Syndicate on 1/19/18.
//  Copyright © 2018 zach. All rights reserved.
//

import Foundation

func testTheAddMethod() {
    let calculator = CalculatorModel()
    let result = calculator.add(num1: 1, num2: 1)
    
    print(result)
}
