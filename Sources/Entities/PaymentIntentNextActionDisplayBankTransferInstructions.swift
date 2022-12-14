// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PaymentIntentNextActionDisplayBankTransferInstructions: Codable {
    /// The remaining amount that needs to be transferred to complete the payment.
    public var amountRemaining: Int?
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String?
    /// A list of financial addresses that can be used to fund the customer balance
    public var financialAddresses: [FundingInstructionsBankTransferFinancialAddress]?
    /// A link to a hosted page that guides your customer through completing the transfer.
    public var hostedInstructionsURL: String?
    /// A string identifying this payment. Instruct your customer to include this code in the reference or memo field of their bank transfer.
    public var reference: String?
    /// Type of bank transfer
    public var type: `Type`

    /// Type of bank transfer
    public enum `Type`: String, Codable, CaseIterable {
        case euBankTransfer = "eu_bank_transfer"
        case gbBankTransfer = "gb_bank_transfer"
        case jpBankTransfer = "jp_bank_transfer"
        case mxBankTransfer = "mx_bank_transfer"
    }

    public init(amountRemaining: Int? = nil, currency: String? = nil, financialAddresses: [FundingInstructionsBankTransferFinancialAddress]? = nil, hostedInstructionsURL: String? = nil, reference: String? = nil, type: `Type`) {
        self.amountRemaining = amountRemaining
        self.currency = currency
        self.financialAddresses = financialAddresses
        self.hostedInstructionsURL = hostedInstructionsURL
        self.reference = reference
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amountRemaining = try values.decodeIfPresent(Int.self, forKey: "amount_remaining")
        self.currency = try values.decodeIfPresent(String.self, forKey: "currency")
        self.financialAddresses = try values.decodeIfPresent([FundingInstructionsBankTransferFinancialAddress].self, forKey: "financial_addresses")
        self.hostedInstructionsURL = try values.decodeIfPresent(String.self, forKey: "hosted_instructions_url")
        self.reference = try values.decodeIfPresent(String.self, forKey: "reference")
        self.type = try values.decode(`Type`.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(amountRemaining, forKey: "amount_remaining")
        try values.encodeIfPresent(currency, forKey: "currency")
        try values.encodeIfPresent(financialAddresses, forKey: "financial_addresses")
        try values.encodeIfPresent(hostedInstructionsURL, forKey: "hosted_instructions_url")
        try values.encodeIfPresent(reference, forKey: "reference")
        try values.encode(type, forKey: "type")
    }
}
