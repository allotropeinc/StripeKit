// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TransferSchedule: Codable {
    /// The number of days charges for the account will be held before being paid out.
    public var delayDays: Int
    /// How frequently funds will be paid out. One of `manual` (payouts only created via API call), `daily`, `weekly`, or `monthly`.
    public var interval: String
    /// The day of the month funds will be paid out. Only shown if `interval` is monthly. Payouts scheduled between the 29th and 31st of the month are sent on the last day of shorter months.
    public var monthlyAnchor: Int?
    /// The day of the week funds will be paid out, of the style 'monday', 'tuesday', etc. Only shown if `interval` is weekly.
    public var weeklyAnchor: String?

    public init(delayDays: Int, interval: String, monthlyAnchor: Int? = nil, weeklyAnchor: String? = nil) {
        self.delayDays = delayDays
        self.interval = interval
        self.monthlyAnchor = monthlyAnchor
        self.weeklyAnchor = weeklyAnchor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.delayDays = try values.decode(Int.self, forKey: "delay_days")
        self.interval = try values.decode(String.self, forKey: "interval")
        self.monthlyAnchor = try values.decodeIfPresent(Int.self, forKey: "monthly_anchor")
        self.weeklyAnchor = try values.decodeIfPresent(String.self, forKey: "weekly_anchor")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(delayDays, forKey: "delay_days")
        try values.encode(interval, forKey: "interval")
        try values.encodeIfPresent(monthlyAnchor, forKey: "monthly_anchor")
        try values.encodeIfPresent(weeklyAnchor, forKey: "weekly_anchor")
    }
}
