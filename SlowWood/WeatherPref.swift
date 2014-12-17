import Foundation

class WeatherPref {
    var name: String
    var cities: [WeatherCity]

    init(name: String, cities: [WeatherCity]) {
        self.name = name
        self.cities = cities
    }
}