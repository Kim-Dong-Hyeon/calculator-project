//
//  RemainderOperation.swift
//  Calculator
//
//  Created by 김동현 on 6/7/24.
//

import Foundation

class RemainderOperation {
    func remainder(_ num1: Double, _ num2: Double) -> Double {
        return num1.truncatingRemainder(dividingBy: num2)
    }
}
