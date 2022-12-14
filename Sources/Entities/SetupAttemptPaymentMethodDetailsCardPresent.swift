// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Setup_attempt_payment_method_details_card_present
public struct SetupAttemptPaymentMethodDetailsCardPresent: Codable {
    /// The ID of the Card PaymentMethod which was generated by this SetupAttempt.
    public var generatedCard: GeneratedCard?

    /// The ID of the Card PaymentMethod which was generated by this SetupAttempt.
    public struct GeneratedCard: Codable {
        public var string: String?
        /// PaymentMethod objects represent your customer's payment instruments.
        /// You can use them with [PaymentIntents](https://stripe.com/docs/payments/payment-intents) to collect payments or save them to
        /// Customer objects to store instrument details for future payments.
        /// 
        /// Related guides: [Payment Methods](https://stripe.com/docs/payments/payment-methods) and [More Payment Scenarios](https://stripe.com/docs/payments/more-payment-scenarios).
        public var paymentMethod: PaymentMethod?

        public init(string: String? = nil, paymentMethod: PaymentMethod? = nil) {
            self.string = string
            self.paymentMethod = paymentMethod
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.paymentMethod = try? container.decode(PaymentMethod.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = paymentMethod { try container.encode(value) }
        }
    }

    public init(generatedCard: GeneratedCard? = nil) {
        self.generatedCard = generatedCard
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.generatedCard = try values.decodeIfPresent(GeneratedCard.self, forKey: "generated_card")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(generatedCard, forKey: "generated_card")
    }
}
