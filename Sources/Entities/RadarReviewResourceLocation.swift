// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct RadarReviewResourceLocation: Codable {
    /// The city where the payment originated.
    public var city: String?
    /// Two-letter ISO code representing the country where the payment originated.
    public var country: String?
    /// The geographic latitude where the payment originated.
    public var latitude: Double?
    /// The geographic longitude where the payment originated.
    public var longitude: Double?
    /// The state/county/province/region where the payment originated.
    public var region: String?

    public init(city: String? = nil, country: String? = nil, latitude: Double? = nil, longitude: Double? = nil, region: String? = nil) {
        self.city = city
        self.country = country
        self.latitude = latitude
        self.longitude = longitude
        self.region = region
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.city = try values.decodeIfPresent(String.self, forKey: "city")
        self.country = try values.decodeIfPresent(String.self, forKey: "country")
        self.latitude = try values.decodeIfPresent(Double.self, forKey: "latitude")
        self.longitude = try values.decodeIfPresent(Double.self, forKey: "longitude")
        self.region = try values.decodeIfPresent(String.self, forKey: "region")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(city, forKey: "city")
        try values.encodeIfPresent(country, forKey: "country")
        try values.encodeIfPresent(latitude, forKey: "latitude")
        try values.encodeIfPresent(longitude, forKey: "longitude")
        try values.encodeIfPresent(region, forKey: "region")
    }
}