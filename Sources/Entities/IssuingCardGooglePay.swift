// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingCardGooglePay: Codable {
    /// Google Pay Eligibility
    public var isEligible: Bool
    /// Reason the card is ineligible for Google Pay
    public var ineligibleReason: IneligibleReason?

    /// Reason the card is ineligible for Google Pay
    public enum IneligibleReason: String, Codable, CaseIterable {
        case missingAgreement = "missing_agreement"
        case missingCardholderContact = "missing_cardholder_contact"
        case unsupportedRegion = "unsupported_region"
    }

    public init(isEligible: Bool, ineligibleReason: IneligibleReason? = nil) {
        self.isEligible = isEligible
        self.ineligibleReason = ineligibleReason
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isEligible = try values.decode(Bool.self, forKey: "eligible")
        self.ineligibleReason = try values.decodeIfPresent(IneligibleReason.self, forKey: "ineligible_reason")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(isEligible, forKey: "eligible")
        try values.encodeIfPresent(ineligibleReason, forKey: "ineligible_reason")
    }
}