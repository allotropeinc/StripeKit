// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceOrderItem: Codable {
    /// The amount (price) for this order item.
    public var amount: Int?
    /// This currency of this order item. Required when `amount` is present.
    public var currency: String?
    /// Human-readable description for this order item.
    public var description: String?
    /// The ID of the associated object for this line item. Expandable if not null (e.g., expandable to a SKU).
    public var parent: String?
    /// The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
    public var quantity: Int?
    /// The type of this order item. Must be `sku`, `tax`, or `shipping`.
    public var type: String?

    public init(amount: Int? = nil, currency: String? = nil, description: String? = nil, parent: String? = nil, quantity: Int? = nil, type: String? = nil) {
        self.amount = amount
        self.currency = currency
        self.description = description
        self.parent = parent
        self.quantity = quantity
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decodeIfPresent(Int.self, forKey: "amount")
        self.currency = try values.decodeIfPresent(String.self, forKey: "currency")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.parent = try values.decodeIfPresent(String.self, forKey: "parent")
        self.quantity = try values.decodeIfPresent(Int.self, forKey: "quantity")
        self.type = try values.decodeIfPresent(String.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(amount, forKey: "amount")
        try values.encodeIfPresent(currency, forKey: "currency")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(parent, forKey: "parent")
        try values.encodeIfPresent(quantity, forKey: "quantity")
        try values.encodeIfPresent(type, forKey: "type")
    }
}
