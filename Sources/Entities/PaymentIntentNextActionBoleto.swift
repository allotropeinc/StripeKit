// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_intent_next_action_boleto
public struct PaymentIntentNextActionBoleto: Codable {
    /// The timestamp after which the boleto expires.
    public var expiresAt: Int?
    /// The URL to the hosted boleto voucher page, which allows customers to view the boleto voucher.
    public var hostedVoucherURL: String?
    /// The boleto number.
    public var number: String?
    /// The URL to the downloadable boleto voucher PDF.
    public var pdf: String?

    public init(expiresAt: Int? = nil, hostedVoucherURL: String? = nil, number: String? = nil, pdf: String? = nil) {
        self.expiresAt = expiresAt
        self.hostedVoucherURL = hostedVoucherURL
        self.number = number
        self.pdf = pdf
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.expiresAt = try values.decodeIfPresent(Int.self, forKey: "expires_at")
        self.hostedVoucherURL = try values.decodeIfPresent(String.self, forKey: "hosted_voucher_url")
        self.number = try values.decodeIfPresent(String.self, forKey: "number")
        self.pdf = try values.decodeIfPresent(String.self, forKey: "pdf")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(expiresAt, forKey: "expires_at")
        try values.encodeIfPresent(hostedVoucherURL, forKey: "hosted_voucher_url")
        try values.encodeIfPresent(number, forKey: "number")
        try values.encodeIfPresent(pdf, forKey: "pdf")
    }
}
