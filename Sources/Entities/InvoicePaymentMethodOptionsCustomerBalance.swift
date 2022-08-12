// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Invoice_payment_method_options_customer_balance
public struct InvoicePaymentMethodOptionsCustomerBalance: Codable {
    /// Invoice_payment_method_options_customer_balance_bank_transfer
    public var bankTransfer: InvoicePaymentMethodOptionsCustomerBalanceBankTransfer?
    /// The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
    public var fundingType: FundingType?

    /// The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
    public enum FundingType: String, Codable, CaseIterable {
        case bankTransfer = "bank_transfer"
    }

    public init(bankTransfer: InvoicePaymentMethodOptionsCustomerBalanceBankTransfer? = nil, fundingType: FundingType? = nil) {
        self.bankTransfer = bankTransfer
        self.fundingType = fundingType
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.bankTransfer = try values.decodeIfPresent(InvoicePaymentMethodOptionsCustomerBalanceBankTransfer.self, forKey: "bank_transfer")
        self.fundingType = try values.decodeIfPresent(FundingType.self, forKey: "funding_type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(bankTransfer, forKey: "bank_transfer")
        try values.encodeIfPresent(fundingType, forKey: "funding_type")
    }
}