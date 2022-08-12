// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Invoice_payment_method_options_us_bank_account
public struct InvoicePaymentMethodOptionsUsBankAccount: Codable {
    /// Invoice_payment_method_options_us_bank_account_linked_account_options
    public var financialConnections: InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions?
    /// Bank account verification method.
    public var verificationMethod: VerificationMethod?

    /// Bank account verification method.
    public enum VerificationMethod: String, Codable, CaseIterable {
        case automatic
        case instant
        case microdeposits
    }

    public init(financialConnections: InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions? = nil, verificationMethod: VerificationMethod? = nil) {
        self.financialConnections = financialConnections
        self.verificationMethod = verificationMethod
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.financialConnections = try values.decodeIfPresent(InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions.self, forKey: "financial_connections")
        self.verificationMethod = try values.decodeIfPresent(VerificationMethod.self, forKey: "verification_method")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(financialConnections, forKey: "financial_connections")
        try values.encodeIfPresent(verificationMethod, forKey: "verification_method")
    }
}
