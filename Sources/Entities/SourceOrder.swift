// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceOrder: Codable {
    /// A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
    public var amount: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String
    /// The email address of the customer placing the order.
    public var email: String?
    /// List of items constituting the order.
    public var items: [SourceOrderItem]?
    public var shipping: Shipping?

    public init(amount: Int, currency: String, email: String? = nil, items: [SourceOrderItem]? = nil, shipping: Shipping? = nil) {
        self.amount = amount
        self.currency = currency
        self.email = email
        self.items = items
        self.shipping = shipping
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.email = try values.decodeIfPresent(String.self, forKey: "email")
        self.items = try values.decodeIfPresent([SourceOrderItem].self, forKey: "items")
        self.shipping = try values.decodeIfPresent(Shipping.self, forKey: "shipping")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(email, forKey: "email")
        try values.encodeIfPresent(items, forKey: "items")
        try values.encodeIfPresent(shipping, forKey: "shipping")
    }
}