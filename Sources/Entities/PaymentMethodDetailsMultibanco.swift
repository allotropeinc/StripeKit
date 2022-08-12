// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_details_multibanco
public struct PaymentMethodDetailsMultibanco: Codable {
    /// Entity number associated with this Multibanco payment.
    public var entity: String?
    /// Reference number associated with this Multibanco payment.
    public var reference: String?

    public init(entity: String? = nil, reference: String? = nil) {
        self.entity = entity
        self.reference = reference
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.entity = try values.decodeIfPresent(String.self, forKey: "entity")
        self.reference = try values.decodeIfPresent(String.self, forKey: "reference")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(entity, forKey: "entity")
        try values.encodeIfPresent(reference, forKey: "reference")
    }
}
