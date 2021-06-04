//
//  CircleButton.swift
//  0604_stackview_practice
//
//  Created by 손대홍 on 2021/06/04.
//

import Foundation
import UIKit

// 인터페이스 빌더에서 디자인으로 확인 가능하게 하는 어노테이션
@IBDesignable
class CircleButton: UIButton {
    
    // IBInspectable 인스펙터블 패널에서 사용될 수 있도록 설정
    @IBInspectable var cornerRadius: CGFloat = 40 {
        didSet{ // 프로퍼티 옵저버, 변수 값 설정이 관측될 때
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
}
