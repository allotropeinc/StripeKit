// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A Promotion Code represents a customer-redeemable code for a [coupon](https://stripe.com/docs/api#coupons). It can be used to
/// create multiple codes for a single coupon.
public struct PromotionCode: Codable {
    /// Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
    public var isActive: Bool
    /// The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer.
    public var code: String
    /// A coupon contains information about a percent-off or amount-off discount you
    /// might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices),
    /// [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
    public var coupon: Coupon
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// The customer that this promotion code can be used by.
    public var customer: Customer?
    /// Date at which the promotion code can no longer be redeemed.
    public var expiresAt: Int?
    /// Unique identifier for the object.
    public var id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// Maximum number of times this promotion code can be redeemed.
    public var maxRedemptions: Int?
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public var metadata: [String: String]?
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// PromotionCodesResourceRestrictions
    public var restrictions: PromotionCodesResourceRestrictions
    /// Number of times this promotion code has been used.
    public var timesRedeemed: Int

    /// The customer that this promotion code can be used by.
    public final class Customer: Codable {
        public let string: String?
        /// This object represents a customer of your business. It lets you create recurring charges and track payments that belong to the same customer.
        /// 
        /// Related guide: [Save a card during payment](https://stripe.com/docs/payments/save-during-payment).
        public let customer: StripeKit.Customer?
        public let deletedCustomer: DeletedCustomer?

        public init(string: String? = nil, customer: StripeKit.Customer? = nil, deletedCustomer: DeletedCustomer? = nil) {
            self.string = string
            self.customer = customer
            self.deletedCustomer = deletedCustomer
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.customer = try? container.decode(StripeKit.Customer.self)
            self.deletedCustomer = try? container.decode(DeletedCustomer.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = customer { try container.encode(value) }
            if let value = deletedCustomer { try container.encode(value) }
        }
    }

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case promotionCode = "promotion_code"
    }

    public init(isActive: Bool, code: String, coupon: Coupon, created: Int, customer: Customer? = nil, expiresAt: Int? = nil, id: String, isLivemode: Bool, maxRedemptions: Int? = nil, metadata: [String: String]? = nil, object: Object, restrictions: PromotionCodesResourceRestrictions, timesRedeemed: Int) {
        self.isActive = isActive
        self.code = code
        self.coupon = coupon
        self.created = created
        self.customer = customer
        self.expiresAt = expiresAt
        self.id = id
        self.isLivemode = isLivemode
        self.maxRedemptions = maxRedemptions
        self.metadata = metadata
        self.object = object
        self.restrictions = restrictions
        self.timesRedeemed = timesRedeemed
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isActive = try values.decode(Bool.self, forKey: "active")
        self.code = try values.decode(String.self, forKey: "code")
        self.coupon = try values.decode(Coupon.self, forKey: "coupon")
        self.created = try values.decode(Int.self, forKey: "created")
        self.customer = try values.decodeIfPresent(Customer.self, forKey: "customer")
        self.expiresAt = try values.decodeIfPresent(Int.self, forKey: "expires_at")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.maxRedemptions = try values.decodeIfPresent(Int.self, forKey: "max_redemptions")
        self.metadata = try values.decodeIfPresent([String: String].self, forKey: "metadata")
        self.object = try values.decode(Object.self, forKey: "object")
        self.restrictions = try values.decode(PromotionCodesResourceRestrictions.self, forKey: "restrictions")
        self.timesRedeemed = try values.decode(Int.self, forKey: "times_redeemed")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(isActive, forKey: "active")
        try values.encode(code, forKey: "code")
        try values.encode(coupon, forKey: "coupon")
        try values.encode(created, forKey: "created")
        try values.encodeIfPresent(customer, forKey: "customer")
        try values.encodeIfPresent(expiresAt, forKey: "expires_at")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encodeIfPresent(maxRedemptions, forKey: "max_redemptions")
        try values.encodeIfPresent(metadata, forKey: "metadata")
        try values.encode(object, forKey: "object")
        try values.encode(restrictions, forKey: "restrictions")
        try values.encode(timesRedeemed, forKey: "times_redeemed")
    }
}
