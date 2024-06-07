//
//  main.swift
//  Calculator
//
//  Created by 김동현 on 6/7/24.
//

import Foundation

// 유의사항
// readLine() 함수를 이용하여 유저의 입력값 처리하기
print("첫 번째 수를 입력해 주세요 : ", terminator: "")
let num1 = readLine()
print("두 번째 수를 입력해 주세요 : ", terminator: "")
let num2 = readLine()

// Lv1
// 생성한 클래스를 이용하여 연산을 진행하고 출력
// 인스턴스 생성하여 변수에 할당
if let num1 = Double(num1!), let num2 = Double(num2!) {
    let calculator = Calculator()
    // 덧셈 연산
    let addResult = calculator.calculate(oper: "add", num1, num2)
    // 뺄셈 연산
    let subtractResult = calculator.calculate(oper: "sub", num1, num2)
    // 곱셈 연산
    let multiplyResult = calculator.calculate(oper: "multi", num1, num2)
    // 나눗셈 연산
    let divideResult = calculator.calculate(oper: "divide", num1, num2)
    
    print("addResult : \(addResult)")
    print("subtractResult : \(subtractResult)")
    print("multiplyResult : \(multiplyResult)")
    print("divideResult : \(divideResult)")
}
