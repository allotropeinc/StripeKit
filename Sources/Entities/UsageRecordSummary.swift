// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct UsageRecordSummary: Codable {
    /// Unique identifier for the object.
    public var id: String
    /// The invoice in which this usage period has been billed for.
    public var invoice: String?
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    public var period: Period
    /// The ID of the subscription item this summary is describing.
    public var subscriptionItem: String
    /// The total usage within this usage period.
    public var totalUsage: Int

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case usageRecordSummary = "usage_record_summary"
    }

    public init(id: String, invoice: String? = nil, isLivemode: Bool, object: Object, period: Period, subscriptionItem: String, totalUsage: Int) {
        self.id = id
        self.invoice = invoice
        self.isLivemode = isLivemode
        self.object = object
        self.period = period
        self.subscriptionItem = subscriptionItem
        self.totalUsage = totalUsage
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.id = try values.decode(String.self, forKey: "id")
        self.invoice = try values.decodeIfPresent(String.self, forKey: "invoice")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.object = try values.decode(Object.self, forKey: "object")
        self.period = try values.decode(Period.self, forKey: "period")
        self.subscriptionItem = try values.decode(String.self, forKey: "subscription_item")
        self.totalUsage = try values.decode(Int.self, forKey: "total_usage")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(invoice, forKey: "invoice")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(object, forKey: "object")
        try values.encode(period, forKey: "period")
        try values.encode(subscriptionItem, forKey: "subscription_item")
        try values.encode(totalUsage, forKey: "total_usage")
    }
}
