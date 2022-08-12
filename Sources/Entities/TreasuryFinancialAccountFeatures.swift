// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// TreasuryFinancialAccountsResourceFinancialAccountFeatures
///
/// Encodes whether a FinancialAccount has access to a particular Feature, with a `status` enum and associated `status_details`.
/// Stripe or the platform can control Features via the requested field.
public struct TreasuryFinancialAccountFeatures: Codable {
    /// TreasuryFinancialAccountsResourceToggleSettings
    ///
    /// Toggle settings for enabling/disabling a feature
    public var cardIssuing: TreasuryFinancialAccountsResourceToggleSettings?
    /// TreasuryFinancialAccountsResourceToggleSettings
    ///
    /// Toggle settings for enabling/disabling a feature
    public var depositInsurance: TreasuryFinancialAccountsResourceToggleSettings?
    /// TreasuryFinancialAccountsResourceFinancialAddressesFeatures
    ///
    /// Settings related to Financial Addresses features on a Financial Account
    public var financialAddresses: TreasuryFinancialAccountsResourceFinancialAddressesFeatures?
    /// TreasuryFinancialAccountsResourceInboundTransfers
    ///
    /// InboundTransfers contains inbound transfers features for a FinancialAccount.
    public var inboundTransfers: TreasuryFinancialAccountsResourceInboundTransfers?
    /// TreasuryFinancialAccountsResourceToggleSettings
    ///
    /// Toggle settings for enabling/disabling a feature
    public var intraStripeFlows: TreasuryFinancialAccountsResourceToggleSettings?
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// TreasuryFinancialAccountsResourceOutboundPayments
    ///
    /// Settings related to Outbound Payments features on a Financial Account
    public var outboundPayments: TreasuryFinancialAccountsResourceOutboundPayments?
    /// TreasuryFinancialAccountsResourceOutboundTransfers
    ///
    /// OutboundTransfers contains outbound transfers features for a FinancialAccount.
    public var outboundTransfers: TreasuryFinancialAccountsResourceOutboundTransfers?

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case treasuryFinancialAccountFeatures = "treasury.financial_account_features"
    }

    public init(cardIssuing: TreasuryFinancialAccountsResourceToggleSettings? = nil, depositInsurance: TreasuryFinancialAccountsResourceToggleSettings? = nil, financialAddresses: TreasuryFinancialAccountsResourceFinancialAddressesFeatures? = nil, inboundTransfers: TreasuryFinancialAccountsResourceInboundTransfers? = nil, intraStripeFlows: TreasuryFinancialAccountsResourceToggleSettings? = nil, object: Object, outboundPayments: TreasuryFinancialAccountsResourceOutboundPayments? = nil, outboundTransfers: TreasuryFinancialAccountsResourceOutboundTransfers? = nil) {
        self.cardIssuing = cardIssuing
        self.depositInsurance = depositInsurance
        self.financialAddresses = financialAddresses
        self.inboundTransfers = inboundTransfers
        self.intraStripeFlows = intraStripeFlows
        self.object = object
        self.outboundPayments = outboundPayments
        self.outboundTransfers = outboundTransfers
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.cardIssuing = try values.decodeIfPresent(TreasuryFinancialAccountsResourceToggleSettings.self, forKey: "card_issuing")
        self.depositInsurance = try values.decodeIfPresent(TreasuryFinancialAccountsResourceToggleSettings.self, forKey: "deposit_insurance")
        self.financialAddresses = try values.decodeIfPresent(TreasuryFinancialAccountsResourceFinancialAddressesFeatures.self, forKey: "financial_addresses")
        self.inboundTransfers = try values.decodeIfPresent(TreasuryFinancialAccountsResourceInboundTransfers.self, forKey: "inbound_transfers")
        self.intraStripeFlows = try values.decodeIfPresent(TreasuryFinancialAccountsResourceToggleSettings.self, forKey: "intra_stripe_flows")
        self.object = try values.decode(Object.self, forKey: "object")
        self.outboundPayments = try values.decodeIfPresent(TreasuryFinancialAccountsResourceOutboundPayments.self, forKey: "outbound_payments")
        self.outboundTransfers = try values.decodeIfPresent(TreasuryFinancialAccountsResourceOutboundTransfers.self, forKey: "outbound_transfers")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(cardIssuing, forKey: "card_issuing")
        try values.encodeIfPresent(depositInsurance, forKey: "deposit_insurance")
        try values.encodeIfPresent(financialAddresses, forKey: "financial_addresses")
        try values.encodeIfPresent(inboundTransfers, forKey: "inbound_transfers")
        try values.encodeIfPresent(intraStripeFlows, forKey: "intra_stripe_flows")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(outboundPayments, forKey: "outbound_payments")
        try values.encodeIfPresent(outboundTransfers, forKey: "outbound_transfers")
    }
}