//
//  OilModel.swift
//  OilApp
//
//  Created by Macbook Pro on 9.01.2023.
//
import Foundation

// MARK: - Welcome
struct OilResult: Codable {
    let result: [Result]
    let lastupdate: String
    let success: Bool
}

// MARK: - Result
struct Result: Codable {
    let marka: String
    let dizel, katkili: Double
}

