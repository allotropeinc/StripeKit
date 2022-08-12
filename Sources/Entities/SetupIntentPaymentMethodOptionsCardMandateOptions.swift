// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Setup_intent_payment_method_options_card_mandate_options
public struct SetupIntentPaymentMethodOptionsCardMandateOptions: Codable {
    /// Amount to be charged for future payments.
    public var amount: Int
    /// One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
    public var amountType: AmountType
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String
    /// A description of the mandate or subscription that is meant to be displayed to the customer.
    public var description: String?
    /// End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
    public var endDate: Int?
    /// Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
    public var interval: Interval
    /// The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
    public var intervalCount: Int?
    /// Unique identifier for the mandate or subscription.
    public var reference: String
    /// Start date of the mandate or subscription. Start date should not be lesser than yesterday.
    public var startDate: Int
    /// Specifies the type of mandates supported. Possible values are `india`.
    public var supportedTypes: [SupportedType]?

    /// One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
    public enum AmountType: String, Codable, CaseIterable {
        case fixed
        case maximum
    }

    /// Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
    public enum Interval: String, Codable, CaseIterable {
        case day
        case month
        case sporadic
        case week
        case year
    }

    public enum SupportedType: String, Codable, CaseIterable {
        case india
    }

    public init(amount: Int, amountType: AmountType, currency: String, description: String? = nil, endDate: Int? = nil, interval: Interval, intervalCount: Int? = nil, reference: String, startDate: Int, supportedTypes: [SupportedType]? = nil) {
        self.amount = amount
        self.amountType = amountType
        self.currency = currency
        self.description = description
        self.endDate = endDate
        self.interval = interval
        self.intervalCount = intervalCount
        self.reference = reference
        self.startDate = startDate
        self.supportedTypes = supportedTypes
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.amountType = try values.decode(AmountType.self, forKey: "amount_type")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.endDate = try values.decodeIfPresent(Int.self, forKey: "end_date")
        self.interval = try values.decode(Interval.self, forKey: "interval")
        self.intervalCount = try values.decodeIfPresent(Int.self, forKey: "interval_count")
        self.reference = try values.decode(String.self, forKey: "reference")
        self.startDate = try values.decode(Int.self, forKey: "start_date")
        self.supportedTypes = try values.decodeIfPresent([SupportedType].self, forKey: "supported_types")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encode(amountType, forKey: "amount_type")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(endDate, forKey: "end_date")
        try values.encode(interval, forKey: "interval")
        try values.encodeIfPresent(intervalCount, forKey: "interval_count")
        try values.encode(reference, forKey: "reference")
        try values.encode(startDate, forKey: "start_date")
        try values.encodeIfPresent(supportedTypes, forKey: "supported_types")
    }
}
