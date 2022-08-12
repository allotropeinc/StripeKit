// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CheckoutCardPaymentMethodOptions: Codable {
    /// CheckoutCardInstallmentsOptions
    public var installments: CheckoutCardInstallmentsOptions?
    /// Indicates that you intend to make future payments with this PaymentIntent's payment method.
    /// 
    /// Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
    /// 
    /// When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
    public var setupFutureUsage: SetupFutureUsage?
    /// Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
    public var statementDescriptorSuffixKana: String?
    /// Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
    public var statementDescriptorSuffixKanji: String?

    /// Indicates that you intend to make future payments with this PaymentIntent's payment method.
    /// 
    /// Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
    /// 
    /// When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
    public enum SetupFutureUsage: String, Codable, CaseIterable {
        case `none`
        case offSession = "off_session"
        case onSession = "on_session"
    }

    public init(installments: CheckoutCardInstallmentsOptions? = nil, setupFutureUsage: SetupFutureUsage? = nil, statementDescriptorSuffixKana: String? = nil, statementDescriptorSuffixKanji: String? = nil) {
        self.installments = installments
        self.setupFutureUsage = setupFutureUsage
        self.statementDescriptorSuffixKana = statementDescriptorSuffixKana
        self.statementDescriptorSuffixKanji = statementDescriptorSuffixKanji
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.installments = try values.decodeIfPresent(CheckoutCardInstallmentsOptions.self, forKey: "installments")
        self.setupFutureUsage = try values.decodeIfPresent(SetupFutureUsage.self, forKey: "setup_future_usage")
        self.statementDescriptorSuffixKana = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_suffix_kana")
        self.statementDescriptorSuffixKanji = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_suffix_kanji")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(installments, forKey: "installments")
        try values.encodeIfPresent(setupFutureUsage, forKey: "setup_future_usage")
        try values.encodeIfPresent(statementDescriptorSuffixKana, forKey: "statement_descriptor_suffix_kana")
        try values.encodeIfPresent(statementDescriptorSuffixKanji, forKey: "statement_descriptor_suffix_kanji")
    }
}
