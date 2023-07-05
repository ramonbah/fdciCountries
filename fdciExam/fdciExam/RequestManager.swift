//
//  RequestManager.swift
//  fdciExam
//
//  Created by Ramon Jr Bahio on 5/7/23.
//

import Alamofire
import SwiftyJSON
import Foundation

class RequestManager {
    func getCountries(){
        AF.request(url).response { response in
            switch response.result {
            case .success:
                do {
                    let json = try JSON(data: response.data!)
                    for countryDictionary in json {
                        countries.append(Country(country: "\(countryDictionary.1["name"]["common"])",
                                                 region: "\(countryDictionary.1["subregion"])",
                                                 capital: "\(countryDictionary.1["capital"][0])"))
                    }
                }catch {
                    print(error)
                }
            case let .failure(error):
                print(error)
            }
        }
    }
}
