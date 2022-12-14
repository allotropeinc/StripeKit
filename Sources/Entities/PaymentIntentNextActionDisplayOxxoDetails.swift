// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PaymentIntentNextActionDisplayOxxoDetails: Codable {
    /// The timestamp after which the OXXO voucher expires.
    public var expiresAfter: Int?
    /// The URL for the hosted OXXO voucher page, which allows customers to view and print an OXXO voucher.
    public var hostedVoucherURL: String?
    /// OXXO reference number.
    public var number: String?

    public init(expiresAfter: Int? = nil, hostedVoucherURL: String? = nil, number: String? = nil) {
        self.expiresAfter = expiresAfter
        self.hostedVoucherURL = hostedVoucherURL
        self.number = number
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.expiresAfter = try values.decodeIfPresent(Int.self, forKey: "expires_after")
        self.hostedVoucherURL = try values.decodeIfPresent(String.self, forKey: "hosted_voucher_url")
        self.number = try values.decodeIfPresent(String.self, forKey: "number")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(expiresAfter, forKey: "expires_after")
        try values.encodeIfPresent(hostedVoucherURL, forKey: "hosted_voucher_url")
        try values.encodeIfPresent(number, forKey: "number")
    }
}
