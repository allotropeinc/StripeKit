// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PortalSubscriptionUpdateProduct: Codable {
    /// The list of price IDs which, when subscribed to, a subscription can be updated.
    public var prices: [String]
    /// The product ID.
    public var product: String

    public init(prices: [String], product: String) {
        self.prices = prices
        self.product = product
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.prices = try values.decode([String].self, forKey: "prices")
        self.product = try values.decode(String.self, forKey: "product")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(prices, forKey: "prices")
        try values.encode(product, forKey: "product")
    }
}