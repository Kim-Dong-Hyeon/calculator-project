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

// Lv2
// Lv1에서 만든 Calculator 클래스에 “나머지 연산”이 가능하도록 코드를 추가하고, 연산 진행 후 출력


if let num1 = Double(num1!), let num2 = Double(num2!) {
    // 프로퍼티 초기화
    let calculator = Calculator(num1, num2)
    // 덧셈 연산
    let addResult = calculator.calculate(oper: "add")
    // 뺄셈 연산
    let subtractResult = calculator.calculate(oper: "sub")
    // 곱셈 연산
    let multiplyResult = calculator.calculate(oper: "multi")
    // 나눗셈 연산
    let divideResult = calculator.calculate(oper: "divide")
    // 나머지 연산
    let remainderResult = calculator.calculate(oper: "remainder")
    
    print("addResult : \(addResult)")
    print("subtractResult : \(subtractResult)")
    print("multiplyResult : \(multiplyResult)")
    print("divideResult : \(divideResult)")
    print("remainderResult : \(remainderResult)")
}

// - Lv2 와 비교하여 어떠한 점이 개선 되었는지 스스로 생각해 봅니다.
// - hint. 클래스의 책임(단일책임원칙)
// 하나의 클래스는 하나의 기능만을 가진다는 원칙으로
// 각 연산 별로 클래스를 나누어 구성하여 나중에 기능 유지보수시에
// 조금 더 알아보기 쉽고 기능상 문제가 발생하더라도 문제가 생긴 기능의 코드만
// 수정하면 되기에 구조상 유지보수에 유용하다고 할 수 있습니다.
