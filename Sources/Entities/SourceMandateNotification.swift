// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Source mandate notifications should be created when a notification related to
/// a source mandate must be sent to the payer. They will trigger a webhook or
/// deliver an email to the customer.
public struct SourceMandateNotification: Codable {
    /// SourceMandateNotificationAcssDebitData
    public var acssDebit: SourceMandateNotificationAcssDebitData?
    /// A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount associated with the mandate notification. The amount is expressed in the currency of the underlying source. Required if the notification type is `debit_initiated`.
    public var amount: Int?
    /// SourceMandateNotificationBacsDebitData
    public var bacsDebit: SourceMandateNotificationBacsDebitData?
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// Unique identifier for the object.
    public var id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// The reason of the mandate notification. Valid reasons are `mandate_confirmed` or `debit_initiated`.
    public var reason: String
    /// SourceMandateNotificationSepaDebitData
    public var sepaDebit: SourceMandateNotificationSepaDebitData?
    /// `Source` objects allow you to accept a variety of payment methods. They
    /// represent a customer's payment instrument, and can be used with the Stripe API
    /// just like a `Card` object: once chargeable, they can be charged, or can be
    /// attached to customers.
    /// 
    /// Related guides: [Sources API](https://stripe.com/docs/sources) and [Sources & Customers](https://stripe.com/docs/sources/customers).
    public var source: Source
    /// The status of the mandate notification. Valid statuses are `pending` or `submitted`.
    public var status: String
    /// The type of source this mandate notification is attached to. Should be the source type identifier code for the payment method, such as `three_d_secure`.
    public var type: String

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case sourceMandateNotification = "source_mandate_notification"
    }

    public init(acssDebit: SourceMandateNotificationAcssDebitData? = nil, amount: Int? = nil, bacsDebit: SourceMandateNotificationBacsDebitData? = nil, created: Int, id: String, isLivemode: Bool, object: Object, reason: String, sepaDebit: SourceMandateNotificationSepaDebitData? = nil, source: Source, status: String, type: String) {
        self.acssDebit = acssDebit
        self.amount = amount
        self.bacsDebit = bacsDebit
        self.created = created
        self.id = id
        self.isLivemode = isLivemode
        self.object = object
        self.reason = reason
        self.sepaDebit = sepaDebit
        self.source = source
        self.status = status
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.acssDebit = try values.decodeIfPresent(SourceMandateNotificationAcssDebitData.self, forKey: "acss_debit")
        self.amount = try values.decodeIfPresent(Int.self, forKey: "amount")
        self.bacsDebit = try values.decodeIfPresent(SourceMandateNotificationBacsDebitData.self, forKey: "bacs_debit")
        self.created = try values.decode(Int.self, forKey: "created")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.object = try values.decode(Object.self, forKey: "object")
        self.reason = try values.decode(String.self, forKey: "reason")
        self.sepaDebit = try values.decodeIfPresent(SourceMandateNotificationSepaDebitData.self, forKey: "sepa_debit")
        self.source = try values.decode(Source.self, forKey: "source")
        self.status = try values.decode(String.self, forKey: "status")
        self.type = try values.decode(String.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(acssDebit, forKey: "acss_debit")
        try values.encodeIfPresent(amount, forKey: "amount")
        try values.encodeIfPresent(bacsDebit, forKey: "bacs_debit")
        try values.encode(created, forKey: "created")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(object, forKey: "object")
        try values.encode(reason, forKey: "reason")
        try values.encodeIfPresent(sepaDebit, forKey: "sepa_debit")
        try values.encode(source, forKey: "source")
        try values.encode(status, forKey: "status")
        try values.encode(type, forKey: "type")
    }
}
