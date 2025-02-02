//
//  UIModel.swift
//  BDUIExample
//
//  Created by Danil on 27.01.2025.
//

import Foundation

struct UIModel: Codable {
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
