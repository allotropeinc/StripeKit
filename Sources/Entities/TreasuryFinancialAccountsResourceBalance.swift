// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Balance information for the FinancialAccount
public struct TreasuryFinancialAccountsResourceBalance: Codable {
    /// Funds the user can spend right now.
    public var cash: [String: Int]
    /// Funds not spendable yet, but will become available at a later time.
    public var inboundPending: [String: Int]
    /// Funds in the account, but not spendable because they are being held for pending outbound flows.
    public var outboundPending: [String: Int]

    public init(cash: [String: Int], inboundPending: [String: Int], outboundPending: [String: Int]) {
        self.cash = cash
        self.inboundPending = inboundPending
        self.outboundPending = outboundPending
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.cash = try values.decode([String: Int].self, forKey: "cash")
        self.inboundPending = try values.decode([String: Int].self, forKey: "inbound_pending")
        self.outboundPending = try values.decode([String: Int].self, forKey: "outbound_pending")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(cash, forKey: "cash")
        try values.encode(inboundPending, forKey: "inbound_pending")
        try values.encode(outboundPending, forKey: "outbound_pending")
    }
}
