// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Restrictions that a Connect Platform has placed on this FinancialAccount.
public struct TreasuryFinancialAccountsResourcePlatformRestrictions: Codable {
    /// Restricts all inbound money movement.
    public var inboundFlows: InboundFlows?
    /// Restricts all outbound money movement.
    public var outboundFlows: OutboundFlows?

    /// Restricts all inbound money movement.
    public enum InboundFlows: String, Codable, CaseIterable {
        case restricted
        case unrestricted
    }

    /// Restricts all outbound money movement.
    public enum OutboundFlows: String, Codable, CaseIterable {
        case restricted
        case unrestricted
    }

    public init(inboundFlows: InboundFlows? = nil, outboundFlows: OutboundFlows? = nil) {
        self.inboundFlows = inboundFlows
        self.outboundFlows = outboundFlows
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.inboundFlows = try values.decodeIfPresent(InboundFlows.self, forKey: "inbound_flows")
        self.outboundFlows = try values.decodeIfPresent(OutboundFlows.self, forKey: "outbound_flows")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(inboundFlows, forKey: "inbound_flows")
        try values.encodeIfPresent(outboundFlows, forKey: "outbound_flows")
    }
}
