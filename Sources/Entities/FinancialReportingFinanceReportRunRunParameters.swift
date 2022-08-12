// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct FinancialReportingFinanceReportRunRunParameters: Codable {
    /// The set of output columns requested for inclusion in the report run.
    public var columns: [String]?
    /// Connected account ID by which to filter the report run.
    public var connectedAccount: String?
    /// Currency of objects to be included in the report run.
    public var currency: String?
    /// Ending timestamp of data to be included in the report run (exclusive).
    public var intervalEnd: Int?
    /// Starting timestamp of data to be included in the report run.
    public var intervalStart: Int?
    /// Payout ID by which to filter the report run.
    public var payout: String?
    /// Category of balance transactions to be included in the report run.
    public var reportingCategory: String?
    /// Defaults to `Etc/UTC`. The output timezone for all timestamps in the report. A list of possible time zone values is maintained at the [IANA Time Zone Database](http://www.iana.org/time-zones). Has no effect on `interval_start` or `interval_end`.
    public var timezone: String?

    public init(columns: [String]? = nil, connectedAccount: String? = nil, currency: String? = nil, intervalEnd: Int? = nil, intervalStart: Int? = nil, payout: String? = nil, reportingCategory: String? = nil, timezone: String? = nil) {
        self.columns = columns
        self.connectedAccount = connectedAccount
        self.currency = currency
        self.intervalEnd = intervalEnd
        self.intervalStart = intervalStart
        self.payout = payout
        self.reportingCategory = reportingCategory
        self.timezone = timezone
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.columns = try values.decodeIfPresent([String].self, forKey: "columns")
        self.connectedAccount = try values.decodeIfPresent(String.self, forKey: "connected_account")
        self.currency = try values.decodeIfPresent(String.self, forKey: "currency")
        self.intervalEnd = try values.decodeIfPresent(Int.self, forKey: "interval_end")
        self.intervalStart = try values.decodeIfPresent(Int.self, forKey: "interval_start")
        self.payout = try values.decodeIfPresent(String.self, forKey: "payout")
        self.reportingCategory = try values.decodeIfPresent(String.self, forKey: "reporting_category")
        self.timezone = try values.decodeIfPresent(String.self, forKey: "timezone")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(columns, forKey: "columns")
        try values.encodeIfPresent(connectedAccount, forKey: "connected_account")
        try values.encodeIfPresent(currency, forKey: "currency")
        try values.encodeIfPresent(intervalEnd, forKey: "interval_end")
        try values.encodeIfPresent(intervalStart, forKey: "interval_start")
        try values.encodeIfPresent(payout, forKey: "payout")
        try values.encodeIfPresent(reportingCategory, forKey: "reporting_category")
        try values.encodeIfPresent(timezone, forKey: "timezone")
    }
}
