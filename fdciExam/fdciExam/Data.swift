//
//  Data.swift
//  fdciExam
//
//  Created by Ramon Jr Bahio on 5/7/23.
//

import Foundation

class Person {
    var name: String
    var region: String
    var country: String
    init(name: String, region: String, country: String) {
        self.name = name
        self.region = region
        self.country = country
    }
    init() {
        self.name = ""
        self.region = ""
        self.country = ""
    }
}

class Country {
    let country: String
    let region: String
    let capital: String
    init(country: String, region: String, capital: String) {
        self.country = country
        self.region = region
        self.capital = capital
    }
}
var countries: [Country] = []
