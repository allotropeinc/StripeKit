// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct OutboundPaymentsPaymentMethodDetails: Codable {
    /// TreasurySharedResourceBillingDetails
    public var billingDetails: TreasurySharedResourceBillingDetails
    /// Outbound_payments_payment_method_details_financial_account
    public var financialAccount: OutboundPaymentsPaymentMethodDetailsFinancialAccount?
    /// The type of the payment method used in the OutboundPayment.
    public var type: `Type`
    /// Outbound_payments_payment_method_details_us_bank_account
    public var usBankAccount: OutboundPaymentsPaymentMethodDetailsUsBankAccount?

    /// The type of the payment method used in the OutboundPayment.
    public enum `Type`: String, Codable, CaseIterable {
        case financialAccount = "financial_account"
        case usBankAccount = "us_bank_account"
    }

    public init(billingDetails: TreasurySharedResourceBillingDetails, financialAccount: OutboundPaymentsPaymentMethodDetailsFinancialAccount? = nil, type: `Type`, usBankAccount: OutboundPaymentsPaymentMethodDetailsUsBankAccount? = nil) {
        self.billingDetails = billingDetails
        self.financialAccount = financialAccount
        self.type = type
        self.usBankAccount = usBankAccount
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.billingDetails = try values.decode(TreasurySharedResourceBillingDetails.self, forKey: "billing_details")
        self.financialAccount = try values.decodeIfPresent(OutboundPaymentsPaymentMethodDetailsFinancialAccount.self, forKey: "financial_account")
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.usBankAccount = try values.decodeIfPresent(OutboundPaymentsPaymentMethodDetailsUsBankAccount.self, forKey: "us_bank_account")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(billingDetails, forKey: "billing_details")
        try values.encodeIfPresent(financialAccount, forKey: "financial_account")
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(usBankAccount, forKey: "us_bank_account")
    }
}
