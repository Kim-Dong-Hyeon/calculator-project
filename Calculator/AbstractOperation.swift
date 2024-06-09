//
//  AbstractOperation.swift
//  Calculator
//
//  Created by 김동현 on 6/7/24.
//

import Foundation
// 클래스의 상속으로 처리
// Lv4
// AbstractOperation라는 추상화된 클래스를 만들기
// 기존에 구현한 AddOperation(더하기), SubtractOperation(빼기), MultiplyOperation(곱하기), DivideOperation(나누기) 클래스들과 관계를 맺고 Calculator 클래스의 내부 코드를 변경
class AbstractOperation {
    // 연산을 수행하는 함수 작성
    func calculate(_ num1: Double, _ num2: Double) -> Double {
        return 0
    }
}
