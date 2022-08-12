// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CheckoutCustomerBalanceBankTransferPaymentMethodOptions: Codable {
    /// Payment_method_options_customer_balance_eu_bank_account
    public var euBankTransfer: PaymentMethodOptionsCustomerBalanceEuBankAccount?
    /// List of address types that should be returned in the financial_addresses response. If not specified, all valid types will be returned.
    /// 
    /// Permitted values include: `sort_code`, `zengin`, `iban`, or `spei`.
    public var requestedAddressTypes: [RequestedAddressType]?
    /// The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, or `mx_bank_transfer`.
    public var type: `Type`?

    public enum RequestedAddressType: String, Codable, CaseIterable {
        case iban
        case sepa
        case sortCode = "sort_code"
        case spei
        case zengin
    }

    /// The bank transfer type that this PaymentIntent is allowed to use for funding Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, or `mx_bank_transfer`.
    public enum `Type`: String, Codable, CaseIterable {
        case euBankTransfer = "eu_bank_transfer"
        case gbBankTransfer = "gb_bank_transfer"
        case jpBankTransfer = "jp_bank_transfer"
        case mxBankTransfer = "mx_bank_transfer"
    }

    public init(euBankTransfer: PaymentMethodOptionsCustomerBalanceEuBankAccount? = nil, requestedAddressTypes: [RequestedAddressType]? = nil, type: `Type`? = nil) {
        self.euBankTransfer = euBankTransfer
        self.requestedAddressTypes = requestedAddressTypes
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.euBankTransfer = try values.decodeIfPresent(PaymentMethodOptionsCustomerBalanceEuBankAccount.self, forKey: "eu_bank_transfer")
        self.requestedAddressTypes = try values.decodeIfPresent([RequestedAddressType].self, forKey: "requested_address_types")
        self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(euBankTransfer, forKey: "eu_bank_transfer")
        try values.encodeIfPresent(requestedAddressTypes, forKey: "requested_address_types")
        try values.encodeIfPresent(type, forKey: "type")
    }
}
