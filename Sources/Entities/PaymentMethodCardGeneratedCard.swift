// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_card_generated_card
public struct PaymentMethodCardGeneratedCard: Codable {
    /// The charge that created this object.
    public var charge: String?
    /// Transaction-specific details of the payment method used in the payment.
    public var paymentMethodDetails: CardGeneratedFromPaymentMethodDetails?
    /// The ID of the SetupAttempt that generated this PaymentMethod, if any.
    public var setupAttempt: SetupAttempt?

    /// The ID of the SetupAttempt that generated this PaymentMethod, if any.
    public final class SetupAttempt: Codable {
        public let string: String?
        /// PaymentFlowsSetupIntentSetupAttempt
        ///
        /// A SetupAttempt describes one attempted confirmation of a SetupIntent,
        /// whether that confirmation was successful or unsuccessful. You can use
        /// SetupAttempts to inspect details of a specific attempt at setting up a
        /// payment method using a SetupIntent.
        public let setupAttempt: StripeKit.SetupAttempt?

        public init(string: String? = nil, setupAttempt: StripeKit.SetupAttempt? = nil) {
            self.string = string
            self.setupAttempt = setupAttempt
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.setupAttempt = try? container.decode(StripeKit.SetupAttempt.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = setupAttempt { try container.encode(value) }
        }
    }

    public init(charge: String? = nil, paymentMethodDetails: CardGeneratedFromPaymentMethodDetails? = nil, setupAttempt: SetupAttempt? = nil) {
        self.charge = charge
        self.paymentMethodDetails = paymentMethodDetails
        self.setupAttempt = setupAttempt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.charge = try values.decodeIfPresent(String.self, forKey: "charge")
        self.paymentMethodDetails = try values.decodeIfPresent(CardGeneratedFromPaymentMethodDetails.self, forKey: "payment_method_details")
        self.setupAttempt = try values.decodeIfPresent(SetupAttempt.self, forKey: "setup_attempt")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(charge, forKey: "charge")
        try values.encodeIfPresent(paymentMethodDetails, forKey: "payment_method_details")
        try values.encodeIfPresent(setupAttempt, forKey: "setup_attempt")
    }
}