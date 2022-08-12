// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Prices define the unit cost, currency, and (optional) billing cycle for both recurring and one-time purchases of products.
/// [Products](https://stripe.com/docs/api#products) help you track inventory or provisioning, and prices help you track payment terms. Different physical goods or levels of service should be represented by products, and pricing options should be represented by prices. This approach lets you change prices without having to change your provisioning scheme.
/// 
/// For example, you might have a single "gold" product that has prices for $10/month, $100/year, and €9 once.
/// 
/// Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription), [create an invoice](https://stripe.com/docs/billing/invoices/create), and more about [products and prices](https://stripe.com/docs/products-prices/overview).
public struct Price: Codable {
    /// Whether the price can be used for new purchases.
    public var isActive: Bool
    /// Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    public var billingScheme: BillingScheme
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String
    /// Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
    public var currencyOptions: [String: CurrencyOption]?
    /// When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
    public var customUnitAmount: CustomUnitAmount?
    /// Unique identifier for the object.
    public var id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
    public var lookupKey: String?
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public var metadata: [String: String]
    /// A brief description of the price, hidden from customers.
    public var nickname: String?
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// The ID of the product this price is associated with.
    public var product: Product
    /// The recurring components of a price such as `interval` and `usage_type`.
    public var recurring: Recurring?
    /// Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    public var taxBehavior: TaxBehavior?
    /// Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    public var tiers: [PriceTier]?
    /// Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    public var tiersMode: TiersMode?
    /// Apply a transformation to the reported usage or set quantity before computing the amount billed. Cannot be combined with `tiers`.
    public var transformQuantity: TransformQuantity?
    /// One of `one_time` or `recurring` depending on whether the price is for a one-time purchase or a recurring (subscription) purchase.
    public var type: `Type`
    /// The unit amount in %s to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    public var unitAmount: Int?
    /// The unit amount in %s to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    public var unitAmountDecimal: String?

    /// Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
    public enum BillingScheme: String, Codable, CaseIterable {
        case perUnit = "per_unit"
        case tiered
    }

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case price
    }

    /// The ID of the product this price is associated with.
    public final class Product: Codable {
        public let string: String?
        /// Products describe the specific goods or services you offer to your customers.
        /// For example, you might offer a Standard and Premium version of your goods or service; each version would be a separate Product.
        /// They can be used in conjunction with [Prices](https://stripe.com/docs/api#prices) to configure pricing in Payment Links, Checkout, and Subscriptions.
        /// 
        /// Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription),
        /// [share a Payment Link](https://stripe.com/docs/payments/payment-links/overview),
        /// [accept payments with Checkout](https://stripe.com/docs/payments/accept-a-payment#create-product-prices-upfront),
        /// and more about [Products and Prices](https://stripe.com/docs/products-prices/overview)
        public let product: StripeKit.Product?
        public let deletedProduct: DeletedProduct?

        public init(string: String? = nil, product: StripeKit.Product? = nil, deletedProduct: DeletedProduct? = nil) {
            self.string = string
            self.product = product
            self.deletedProduct = deletedProduct
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.product = try? container.decode(StripeKit.Product.self)
            self.deletedProduct = try? container.decode(DeletedProduct.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = product { try container.encode(value) }
            if let value = deletedProduct { try container.encode(value) }
        }
    }

    /// Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    public enum TaxBehavior: String, Codable, CaseIterable {
        case exclusive
        case inclusive
        case unspecified
    }

    /// Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price. In `graduated` tiering, pricing can change as the quantity grows.
    public enum TiersMode: String, Codable, CaseIterable {
        case graduated
        case volume
    }

    /// One of `one_time` or `recurring` depending on whether the price is for a one-time purchase or a recurring (subscription) purchase.
    public enum `Type`: String, Codable, CaseIterable {
        case oneTime = "one_time"
        case recurring
    }

    public init(isActive: Bool, billingScheme: BillingScheme, created: Int, currency: String, currencyOptions: [String: CurrencyOption]? = nil, customUnitAmount: CustomUnitAmount? = nil, id: String, isLivemode: Bool, lookupKey: String? = nil, metadata: [String: String], nickname: String? = nil, object: Object, product: Product, recurring: Recurring? = nil, taxBehavior: TaxBehavior? = nil, tiers: [PriceTier]? = nil, tiersMode: TiersMode? = nil, transformQuantity: TransformQuantity? = nil, type: `Type`, unitAmount: Int? = nil, unitAmountDecimal: String? = nil) {
        self.isActive = isActive
        self.billingScheme = billingScheme
        self.created = created
        self.currency = currency
        self.currencyOptions = currencyOptions
        self.customUnitAmount = customUnitAmount
        self.id = id
        self.isLivemode = isLivemode
        self.lookupKey = lookupKey
        self.metadata = metadata
        self.nickname = nickname
        self.object = object
        self.product = product
        self.recurring = recurring
        self.taxBehavior = taxBehavior
        self.tiers = tiers
        self.tiersMode = tiersMode
        self.transformQuantity = transformQuantity
        self.type = type
        self.unitAmount = unitAmount
        self.unitAmountDecimal = unitAmountDecimal
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isActive = try values.decode(Bool.self, forKey: "active")
        self.billingScheme = try values.decode(BillingScheme.self, forKey: "billing_scheme")
        self.created = try values.decode(Int.self, forKey: "created")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.currencyOptions = try values.decodeIfPresent([String: CurrencyOption].self, forKey: "currency_options")
        self.customUnitAmount = try values.decodeIfPresent(CustomUnitAmount.self, forKey: "custom_unit_amount")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.lookupKey = try values.decodeIfPresent(String.self, forKey: "lookup_key")
        self.metadata = try values.decode([String: String].self, forKey: "metadata")
        self.nickname = try values.decodeIfPresent(String.self, forKey: "nickname")
        self.object = try values.decode(Object.self, forKey: "object")
        self.product = try values.decode(Product.self, forKey: "product")
        self.recurring = try values.decodeIfPresent(Recurring.self, forKey: "recurring")
        self.taxBehavior = try values.decodeIfPresent(TaxBehavior.self, forKey: "tax_behavior")
        self.tiers = try values.decodeIfPresent([PriceTier].self, forKey: "tiers")
        self.tiersMode = try values.decodeIfPresent(TiersMode.self, forKey: "tiers_mode")
        self.transformQuantity = try values.decodeIfPresent(TransformQuantity.self, forKey: "transform_quantity")
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.unitAmount = try values.decodeIfPresent(Int.self, forKey: "unit_amount")
        self.unitAmountDecimal = try values.decodeIfPresent(String.self, forKey: "unit_amount_decimal")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(isActive, forKey: "active")
        try values.encode(billingScheme, forKey: "billing_scheme")
        try values.encode(created, forKey: "created")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(currencyOptions, forKey: "currency_options")
        try values.encodeIfPresent(customUnitAmount, forKey: "custom_unit_amount")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encodeIfPresent(lookupKey, forKey: "lookup_key")
        try values.encode(metadata, forKey: "metadata")
        try values.encodeIfPresent(nickname, forKey: "nickname")
        try values.encode(object, forKey: "object")
        try values.encode(product, forKey: "product")
        try values.encodeIfPresent(recurring, forKey: "recurring")
        try values.encodeIfPresent(taxBehavior, forKey: "tax_behavior")
        try values.encodeIfPresent(tiers, forKey: "tiers")
        try values.encodeIfPresent(tiersMode, forKey: "tiers_mode")
        try values.encodeIfPresent(transformQuantity, forKey: "transform_quantity")
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(unitAmount, forKey: "unit_amount")
        try values.encodeIfPresent(unitAmountDecimal, forKey: "unit_amount_decimal")
    }
}
