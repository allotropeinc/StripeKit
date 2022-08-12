// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_details_konbini_store
public struct PaymentMethodDetailsKonbiniStore: Codable {
    /// The name of the convenience store chain where the payment was completed.
    public var chain: Chain?

    /// The name of the convenience store chain where the payment was completed.
    public enum Chain: String, Codable, CaseIterable {
        case familymart
        case lawson
        case ministop
        case seicomart
    }

    public init(chain: Chain? = nil) {
        self.chain = chain
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.chain = try values.decodeIfPresent(Chain.self, forKey: "chain")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(chain, forKey: "chain")
    }
}