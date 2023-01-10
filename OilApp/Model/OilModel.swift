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

//
//// MARK: - Welcome
//struct OilResult: Codable {
//    let qualifications: Qualifications
//    let data: [String: Datum]
//}
//
//// MARK: - Datum
//struct Datum: Codable {
//    let kursunsuz95Excellium95TLLt, gazyagiTLLt, motorinEurodieselTLLt, motorinExcelliumEurodieselTLLt: String
//    let kaloriferYakitiTLKg, fuelOilTLKg, yüksekKükürtlüFuelOilTLKg, otogazTLLt: String
//
//    enum CodingKeys: String, CodingKey {
//        case kursunsuz95Excellium95TLLt = "Kursunsuz_95(Excellium95)_TL/lt"
//        case gazyagiTLLt = "Gazyagi_TL/lt"
//        case motorinEurodieselTLLt = "Motorin(Eurodiesel)_TL/lt"
//        case motorinExcelliumEurodieselTLLt = "Motorin(Excellium_Eurodiesel)_TL/lt"
//        case kaloriferYakitiTLKg = "Kalorifer_Yakiti_TL/kg"
//        case fuelOilTLKg = "Fuel_Oil_TL/Kg"
//        case yüksekKükürtlüFuelOilTLKg = "Yüksek_Kükürtlü_Fuel_Oil_TL/kg"
//        case otogazTLLt = "Otogaz_TL/lt"
//    }
//}
//
//// MARK: - Qualifications
//struct Qualifications: Codable {
//    let city: String
//    let cityID: Int
//}
