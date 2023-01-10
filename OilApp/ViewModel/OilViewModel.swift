//
//  OilViewModel.swift
//  OilApp
//
//  Created by Macbook Pro on 9.01.2023.
//

import Foundation

class OilViewModel {
    
    var senderObject : OilResult?
    
    func getData(townName: String, cityName: String, completion: @escaping()->()){
        var request = URLRequest(url: URL(string: "https://api.collectapi.com/gasPrice/turkeyDiesel?district=\(townName)&city=\(cityName)")!)
        request.addValue("application/json", forHTTPHeaderField: "content-type")
        request.addValue("apikey 4x6sqXCpT5hZwLQvVco3y4:7tdpJE1slPMBfLN10EE4xC", forHTTPHeaderField: "authorization")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                var jsonDecode = try? JSONDecoder().decode(OilResult.self, from: data)
                print(jsonDecode?.result[0].marka)
                self.senderObject = jsonDecode
               completion()
                
            }else {
                print(error?.localizedDescription)
            }
        }
        task.resume()
    }
}
