//
//  APIManager.swift
//  Weather App(URL)
//
//  Created by Dinmukhammed Begaly on 28.12.2023.
//

import Foundation

class APIManager {
    static let shared = APIManager()

    let url = "https://api.weatherbit.io/v2.0/forecast/daily?lat=43.2183046&lon=76.9525157"

    func getRequest() {
        guard let urlRequest = URL(string: url) else {return}

        var request = URLRequest(url: urlRequest)
        

    }

}
