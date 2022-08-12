// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TreasuryFinancialAccountsResourceStatusDetails: Codable {
    /// Details related to the closure of this FinancialAccount
    public var closed: TreasuryFinancialAccountsResourceClosedStatusDetails?

    public init(closed: TreasuryFinancialAccountsResourceClosedStatusDetails? = nil) {
        self.closed = closed
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.closed = try values.decodeIfPresent(TreasuryFinancialAccountsResourceClosedStatusDetails.self, forKey: "closed")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(closed, forKey: "closed")
    }
}
