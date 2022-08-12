// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingAuthorizationMerchantData: Codable {
    /// A categorization of the seller's type of business. See our [merchant categories guide](https://stripe.com/docs/issuing/merchant-categories) for a list of possible values.
    public var category: String
    /// The merchant category code for the seller’s business
    public var categoryCode: String
    /// City where the seller is located
    public var city: String?
    /// Country where the seller is located
    public var country: String?
    /// Name of the seller
    public var name: String?
    /// Identifier assigned to the seller by the card brand
    public var networkID: String
    /// Postal code where the seller is located
    public var postalCode: String?
    /// State where the seller is located
    public var state: String?

    public init(category: String, categoryCode: String, city: String? = nil, country: String? = nil, name: String? = nil, networkID: String, postalCode: String? = nil, state: String? = nil) {
        self.category = category
        self.categoryCode = categoryCode
        self.city = city
        self.country = country
        self.name = name
        self.networkID = networkID
        self.postalCode = postalCode
        self.state = state
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.category = try values.decode(String.self, forKey: "category")
        self.categoryCode = try values.decode(String.self, forKey: "category_code")
        self.city = try values.decodeIfPresent(String.self, forKey: "city")
        self.country = try values.decodeIfPresent(String.self, forKey: "country")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.networkID = try values.decode(String.self, forKey: "network_id")
        self.postalCode = try values.decodeIfPresent(String.self, forKey: "postal_code")
        self.state = try values.decodeIfPresent(String.self, forKey: "state")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(category, forKey: "category")
        try values.encode(categoryCode, forKey: "category_code")
        try values.encodeIfPresent(city, forKey: "city")
        try values.encodeIfPresent(country, forKey: "country")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encode(networkID, forKey: "network_id")
        try values.encodeIfPresent(postalCode, forKey: "postal_code")
        try values.encodeIfPresent(state, forKey: "state")
    }
}