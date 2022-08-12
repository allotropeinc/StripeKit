// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionSchedulesResourceDefaultSettingsAutomaticTax: Codable {
    /// Whether Stripe automatically computes tax on invoices created during this phase.
    public var isEnabled: Bool

    public init(isEnabled: Bool) {
        self.isEnabled = isEnabled
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isEnabled = try values.decode(Bool.self, forKey: "enabled")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(isEnabled, forKey: "enabled")
    }
}
