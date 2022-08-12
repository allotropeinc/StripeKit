// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct InboundTransfers: Codable {
    /// TreasurySharedResourceBillingDetails
    public var billingDetails: TreasurySharedResourceBillingDetails
    /// The type of the payment method used in the InboundTransfer.
    public var type: `Type`
    /// Inbound_transfers_payment_method_details_us_bank_account
    public var usBankAccount: InboundTransfersPaymentMethodDetailsUsBankAccount?

    /// The type of the payment method used in the InboundTransfer.
    public enum `Type`: String, Codable, CaseIterable {
        case usBankAccount = "us_bank_account"
    }

    public init(billingDetails: TreasurySharedResourceBillingDetails, type: `Type`, usBankAccount: InboundTransfersPaymentMethodDetailsUsBankAccount? = nil) {
        self.billingDetails = billingDetails
        self.type = type
        self.usBankAccount = usBankAccount
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.billingDetails = try values.decode(TreasurySharedResourceBillingDetails.self, forKey: "billing_details")
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.usBankAccount = try values.decodeIfPresent(InboundTransfersPaymentMethodDetailsUsBankAccount.self, forKey: "us_bank_account")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(billingDetails, forKey: "billing_details")
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(usBankAccount, forKey: "us_bank_account")
    }
}
