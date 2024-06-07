//
//  Calculator.swift
//  Calculator
//
//  Created by 김동현 on 6/7/24.
//

import Foundation
// Lv1
// 더하기, 빼기, 나누기, 곱하기 연산을 수행할 수 있는 Calculator 클래스를 만들기

// Lv2
// Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력
class Calculator {
    func calculate(oper: String, _ num1: Double, _ num2: Double) -> Double {
        // switch case 문법을 활용한 연산자별 기능 구현
        switch oper {
        // 덧셈 연산
        case "add":
            return num1 + num2
        // 뺄셈 연산
        case "sub":
            return num1 - num2
        // 곱셈 연산
        case "multi":
            return num1 * num2
        // 나눗셈 연산
        case "divide":
            return num1 / num2
        // 나머지 연산
        case "remainder":
            return num1.truncatingRemainder(dividingBy: num2)
        // 정확한 operator가 전달되지 않을 시 0을 리턴(nil을 리턴해도 됨)
        default:
            return 0
        }
    }
}
