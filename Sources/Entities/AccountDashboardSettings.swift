// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AccountDashboardSettings: Codable {
    /// The display name for this account. This is used on the Stripe Dashboard to differentiate between accounts.
    public var displayName: String?
    /// The timezone used in the Stripe Dashboard for this account. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones).
    public var timezone: String?

    public init(displayName: String? = nil, timezone: String? = nil) {
        self.displayName = displayName
        self.timezone = timezone
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.displayName = try values.decodeIfPresent(String.self, forKey: "display_name")
        self.timezone = try values.decodeIfPresent(String.self, forKey: "timezone")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(displayName, forKey: "display_name")
        try values.encodeIfPresent(timezone, forKey: "timezone")
    }
}
