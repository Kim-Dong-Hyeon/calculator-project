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

// Lv4
// 선택 구현 기능 (힌트 : 추상화)
if let num1 = Double(num1!), let num2 = Double(num2!) {
    // 프로퍼티 초기화
    // 덧셈 기능하도록 초기화
    let calculator = Calculator("add")
    // 덧셈 연산
    let addResult = calculator.calculate(num1, num2)
    // 뺄셈 연산
    // calculator에 뺄셈 기능하도록 프로퍼티 변경함수 호출
    calculator.set("sub")
    let subtractResult = calculator.calculate(num1, num2)
    // 곱셈 연산
    // calculator에 곱셈 기능하도록 프로퍼티 변경함수 호출
    calculator.set("multi")
    let multiplyResult = calculator.calculate(num1, num2)
    // 나눗셈 연산
    // calculator에 나눗셈 기능하도록 프로퍼티 변경함수 호출
    calculator.set("divide")
    let divideResult = calculator.calculate(num1, num2)
    // 나머지 연산
    // calculator에 나머지 기능하도록 프로퍼티 변경함수 호출
    calculator.set("remainder")
    let remainderResult = calculator.calculate(num1, num2)
    
    print("addResult : \(addResult)")
    print("subtractResult : \(subtractResult)")
    print("multiplyResult : \(multiplyResult)")
    print("divideResult : \(divideResult)")
    print("remainderResult : \(remainderResult)")
}

// Lv3
// - Lv2 와 비교하여 어떠한 점이 개선 되었는지 스스로 생각해 봅니다.
// - hint. 클래스의 책임(단일책임원칙)
// 하나의 클래스는 하나의 기능만을 가진다는 원칙으로
// 각 연산 별로 클래스를 나누어 구성하여 나중에 기능 유지보수시에
// 조금 더 알아보기 쉽고 기능상 문제가 발생하더라도 문제가 생긴 기능의 코드만
// 수정하면 되기에 구조상 유지보수에 유용하다고 할 수 있습니다.

// Lv4
// Lv3 와 비교해서 어떠한 점이 개선 되었는지 스스로 생각해 봅니다.
// hint. 클래스간의 결합도, 의존성(의존성역전원칙)
// AbstractOperation 이라는 추상화된 클래스를 만듬으로써 비슷한 구조의 클래스를
// 손쉽게 생성 및 관리할 수 있고 비슷한 구조여서 함수 호출이나 매개변수 사용이 용이합니다.
// 이로인해 코드 유지보수에 도움이 된다고 할 수 있습니다.
