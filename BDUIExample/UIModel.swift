//
//  UIModel.swift
//  BDUIExample
//
//  Created by Danil on 27.01.2025.
//

import Foundation
import UIKit

struct UIModel: Codable {
    let type: UIResponder
    let x: CGFloat
    let y: CGFloat
    let width: CGFloat
    let height: CGFloat
    let color: ColorStruct
}

struct ColorStruct: Codable {
    let red: CGFloat
    let green: CGFloat
    let blue: CGFloat
}
