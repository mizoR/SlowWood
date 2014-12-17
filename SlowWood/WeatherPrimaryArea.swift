import Foundation
import Alamofire

class WeatherPrimaryArea {
    var prefs :[WeatherPref]

    init() {
        self.prefs = []
        self.load()
    }

    func load() {
        let url = "http://weather.livedoor.com/forecast/rss/primary_area.xml"
        var error : NSError? = nil

        Alamofire.request(.GET, url).responseString { (request, response, data, error) in
            if response?.statusCode == 200 {
                var root = RXMLElement(fromXMLString: data, encoding: NSUTF8StringEncoding)
                var cities: [WeatherCity] = []
                root.iterate("channel.*.pref") { (pref) in
                    var prefName = pref.attribute("title")

                    cities = [WeatherCity]()
                    pref.iterate("city") { (city) in
                        var cityId = city.attributeAsInt("id")
                        var cityName = city.attribute("title")
                        cities.append(WeatherCity(id: cityId, name: cityName))
                    }
                    var pref = WeatherPref(name: prefName, cities: cities)
                    self.prefs.append(pref)
                }
            }
        }
    }
}