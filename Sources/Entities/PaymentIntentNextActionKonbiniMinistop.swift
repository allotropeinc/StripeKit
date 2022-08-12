// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_intent_next_action_konbini_ministop
public struct PaymentIntentNextActionKonbiniMinistop: Codable {
    /// The confirmation number.
    public var confirmationNumber: String?
    /// The payment code.
    public var paymentCode: String

    public init(confirmationNumber: String? = nil, paymentCode: String) {
        self.confirmationNumber = confirmationNumber
        self.paymentCode = paymentCode
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.confirmationNumber = try values.decodeIfPresent(String.self, forKey: "confirmation_number")
        self.paymentCode = try values.decode(String.self, forKey: "payment_code")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(confirmationNumber, forKey: "confirmation_number")
        try values.encode(paymentCode, forKey: "payment_code")
    }
}
