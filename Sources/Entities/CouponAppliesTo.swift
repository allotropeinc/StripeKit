// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CouponAppliesTo: Codable {
    /// A list of product IDs this coupon applies to
    public var products: [String]

    public init(products: [String]) {
        self.products = products
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.products = try values.decode([String].self, forKey: "products")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(products, forKey: "products")
    }
}
