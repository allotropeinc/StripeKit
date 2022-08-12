// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_card_checks
public struct PaymentMethodCardChecks: Codable {
    /// If a address line1 was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
    public var addressLine1Check: String?
    /// If a address postal code was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
    public var addressPostalCodeCheck: String?
    /// If a CVC was provided, results of the check, one of `pass`, `fail`, `unavailable`, or `unchecked`.
    public var cvcCheck: String?

    public init(addressLine1Check: String? = nil, addressPostalCodeCheck: String? = nil, cvcCheck: String? = nil) {
        self.addressLine1Check = addressLine1Check
        self.addressPostalCodeCheck = addressPostalCodeCheck
        self.cvcCheck = cvcCheck
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.addressLine1Check = try values.decodeIfPresent(String.self, forKey: "address_line1_check")
        self.addressPostalCodeCheck = try values.decodeIfPresent(String.self, forKey: "address_postal_code_check")
        self.cvcCheck = try values.decodeIfPresent(String.self, forKey: "cvc_check")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(addressLine1Check, forKey: "address_line1_check")
        try values.encodeIfPresent(addressPostalCodeCheck, forKey: "address_postal_code_check")
        try values.encodeIfPresent(cvcCheck, forKey: "cvc_check")
    }
}
