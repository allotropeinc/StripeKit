// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ReserveTransaction: Codable {
    public var amount: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String
    /// An arbitrary string attached to the object. Often useful for displaying to users.
    public var description: String?
    /// Unique identifier for the object.
    public var id: String
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case reserveTransaction = "reserve_transaction"
    }

    public init(amount: Int, currency: String, description: String? = nil, id: String, object: Object) {
        self.amount = amount
        self.currency = currency
        self.description = description
        self.id = id
        self.object = object
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.id = try values.decode(String.self, forKey: "id")
        self.object = try values.decode(Object.self, forKey: "object")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encode(id, forKey: "id")
        try values.encode(object, forKey: "object")
    }
}
