// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingAuthorizationAmountDetails: Codable {
    /// The fee charged by the ATM for the cash withdrawal.
    public var atmFee: Int?

    public init(atmFee: Int? = nil) {
        self.atmFee = atmFee
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.atmFee = try values.decodeIfPresent(Int.self, forKey: "atm_fee")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(atmFee, forKey: "atm_fee")
    }
}
