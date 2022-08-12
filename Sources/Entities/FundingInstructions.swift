// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// CustomerBalanceFundingInstructionsCustomerBalanceFundingInstructions
///
/// Each customer has a [`balance`](https://stripe.com/docs/api/customers/object#customer_object-balance) that is
/// automatically applied to future invoices and payments using the `customer_balance` payment method.
/// Customers can fund this balance by initiating a bank transfer to any account in the
/// `financial_addresses` field.
/// Related guide: [Customer Balance - Funding Instructions](https://stripe.com/docs/payments/customer-balance/funding-instructions) to learn more
public struct FundingInstructions: Codable {
    /// FundingInstructionsBankTransfer
    public var bankTransfer: FundingInstructionsBankTransfer
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String
    /// The `funding_type` of the returned instructions
    public var fundingType: FundingType
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object

    /// The `funding_type` of the returned instructions
    public enum FundingType: String, Codable, CaseIterable {
        case bankTransfer = "bank_transfer"
    }

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case fundingInstructions = "funding_instructions"
    }

    public init(bankTransfer: FundingInstructionsBankTransfer, currency: String, fundingType: FundingType, isLivemode: Bool, object: Object) {
        self.bankTransfer = bankTransfer
        self.currency = currency
        self.fundingType = fundingType
        self.isLivemode = isLivemode
        self.object = object
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.bankTransfer = try values.decode(FundingInstructionsBankTransfer.self, forKey: "bank_transfer")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.fundingType = try values.decode(FundingType.self, forKey: "funding_type")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.object = try values.decode(Object.self, forKey: "object")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(bankTransfer, forKey: "bank_transfer")
        try values.encode(currency, forKey: "currency")
        try values.encode(fundingType, forKey: "funding_type")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(object, forKey: "object")
    }
}
