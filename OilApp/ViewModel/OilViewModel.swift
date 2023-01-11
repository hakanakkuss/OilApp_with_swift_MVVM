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
        request.addValue("apikey 3IDLDp0v9VMJviPMjxLfsz:4adgX2xahnA9Whmx8Tq9pB", forHTTPHeaderField: "authorization")

        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            if let data = data {
                do{
                    var jsonDecode = try? JSONDecoder().decode(OilResult.self, from: data)
                    self.senderObject = jsonDecode
                   completion()
                }catch{
                    print(error.localizedDescription)
                }
            }else {
                print(error?.localizedDescription)
            }
        }
        task.resume()
    }
}
