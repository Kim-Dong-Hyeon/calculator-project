//
//  MultiplyOperation.swift
//  Calculator
//
//  Created by 김동현 on 6/7/24.
//

import Foundation
// 함수 override
class MultiOperation: AbstractOperation {
    override func calculate(_ num1: Double, _ num2: Double) -> Double {
        return num1 * num2
    }
}
