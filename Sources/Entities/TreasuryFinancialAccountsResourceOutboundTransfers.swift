// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// OutboundTransfers contains outbound transfers features for a FinancialAccount.
public struct TreasuryFinancialAccountsResourceOutboundTransfers: Codable {
    /// TreasuryFinancialAccountsResourceToggleSettings
    ///
    /// Toggle settings for enabling/disabling a feature
    public var ach: TreasuryFinancialAccountsResourceToggleSettings?
    /// TreasuryFinancialAccountsResourceToggleSettings
    ///
    /// Toggle settings for enabling/disabling a feature
    public var usDomesticWire: TreasuryFinancialAccountsResourceToggleSettings?

    public init(ach: TreasuryFinancialAccountsResourceToggleSettings? = nil, usDomesticWire: TreasuryFinancialAccountsResourceToggleSettings? = nil) {
        self.ach = ach
        self.usDomesticWire = usDomesticWire
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.ach = try values.decodeIfPresent(TreasuryFinancialAccountsResourceToggleSettings.self, forKey: "ach")
        self.usDomesticWire = try values.decodeIfPresent(TreasuryFinancialAccountsResourceToggleSettings.self, forKey: "us_domestic_wire")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(ach, forKey: "ach")
        try values.encodeIfPresent(usDomesticWire, forKey: "us_domestic_wire")
    }
}
