// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_details_card_installments
public struct PaymentMethodDetailsCardInstallments: Codable {
    /// Installment plan selected for the payment.
    public var plan: PaymentMethodDetailsCardInstallmentsPlan?

    public init(plan: PaymentMethodDetailsCardInstallmentsPlan? = nil) {
        self.plan = plan
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.plan = try values.decodeIfPresent(PaymentMethodDetailsCardInstallmentsPlan.self, forKey: "plan")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(plan, forKey: "plan")
    }
}