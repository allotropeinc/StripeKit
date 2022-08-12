// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Setup_intent_payment_method_options_acss_debit
public struct SetupIntentPaymentMethodOptionsAcssDebit: Codable {
    /// Currency supported by the bank account
    public var currency: Currency?
    /// Setup_intent_payment_method_options_mandate_options_acss_debit
    public var mandateOptions: SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit?
    /// Bank account verification method.
    public var verificationMethod: VerificationMethod?

    /// Currency supported by the bank account
    public enum Currency: String, Codable, CaseIterable {
        case cad
        case usd
    }

    /// Bank account verification method.
    public enum VerificationMethod: String, Codable, CaseIterable {
        case automatic
        case instant
        case microdeposits
    }

    public init(currency: Currency? = nil, mandateOptions: SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit? = nil, verificationMethod: VerificationMethod? = nil) {
        self.currency = currency
        self.mandateOptions = mandateOptions
        self.verificationMethod = verificationMethod
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.currency = try values.decodeIfPresent(Currency.self, forKey: "currency")
        self.mandateOptions = try values.decodeIfPresent(SetupIntentPaymentMethodOptionsMandateOptionsAcssDebit.self, forKey: "mandate_options")
        self.verificationMethod = try values.decodeIfPresent(VerificationMethod.self, forKey: "verification_method")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(currency, forKey: "currency")
        try values.encodeIfPresent(mandateOptions, forKey: "mandate_options")
        try values.encodeIfPresent(verificationMethod, forKey: "verification_method")
    }
}
