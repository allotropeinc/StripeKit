// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var prices: Prices {
        Prices(path: "/v1/prices")
    }

    public struct Prices {
        /// Path: `/v1/prices`
        public let path: String

        /// <p>Returns a list of your prices.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetPrices")
        }

        /// PriceList
        public struct GetResponse: Decodable {
            /// Details about each object.
            public var data: [StripeKit.Price]
            /// True if this list has another page of items after this one that can be fetched.
            public var hasMore: Bool
            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public var object: Object
            /// The URL where this list can be accessed.
            public var url: String

            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public enum Object: String, Codable, CaseIterable {
                case list
            }

            public init(data: [StripeKit.Price], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.Price].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var isActive: Bool?
            public var created: Created?
            public var currency: String?
            public var endingBefore: String?
            public var expand: [String]?
            public var limit: Int?
            public var lookupKeys: [String]?
            public var product: String?
            /// All_prices_recurring_params
            public var recurring: Recurring?
            public var startingAfter: String?
            public var type: `Type`?

            public struct Created: Codable {
                /// Range_query_specs
                public var object: Object?
                public var int: Int?

                /// Range_query_specs
                public struct Object: Codable {
                    public var gt: Int?
                    public var gte: Int?
                    public var lt: Int?
                    public var lte: Int?

                    public init(gt: Int? = nil, gte: Int? = nil, lt: Int? = nil, lte: Int? = nil) {
                        self.gt = gt
                        self.gte = gte
                        self.lt = lt
                        self.lte = lte
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(gt, forKey: "gt")
                        encoder.encode(gte, forKey: "gte")
                        encoder.encode(lt, forKey: "lt")
                        encoder.encode(lte, forKey: "lte")
                        return encoder.items
                    }
                }

                public init(object: Object? = nil, int: Int? = nil) {
                    self.object = object
                    self.int = int
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(object, forKey: "object")
                    encoder.encode(int, forKey: "int")
                    return encoder.items
                }
            }

            /// All_prices_recurring_params
            public struct Recurring: Codable {
                public var interval: Interval?
                public var usageType: UsageType?

                public enum Interval: String, Codable, CaseIterable {
                    case day
                    case month
                    case week
                    case year
                }

                public enum UsageType: String, Codable, CaseIterable {
                    case licensed
                    case metered
                }

                public init(interval: Interval? = nil, usageType: UsageType? = nil) {
                    self.interval = interval
                    self.usageType = usageType
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(interval, forKey: "interval")
                    encoder.encode(usageType, forKey: "usage_type")
                    return encoder.items
                }
            }

            public enum `Type`: String, Codable, CaseIterable {
                case oneTime = "one_time"
                case recurring
            }

            public init(isActive: Bool? = nil, created: Created? = nil, currency: String? = nil, endingBefore: String? = nil, expand: [String]? = nil, limit: Int? = nil, lookupKeys: [String]? = nil, product: String? = nil, recurring: Recurring? = nil, startingAfter: String? = nil, type: `Type`? = nil) {
                self.isActive = isActive
                self.created = created
                self.currency = currency
                self.endingBefore = endingBefore
                self.expand = expand
                self.limit = limit
                self.lookupKeys = lookupKeys
                self.product = product
                self.recurring = recurring
                self.startingAfter = startingAfter
                self.type = type
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isActive, forKey: "active")
                encoder.encode(created, forKey: "created", isDeepObject: true)
                encoder.encode(currency, forKey: "currency")
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(lookupKeys, forKey: "lookup_keys", isDeepObject: true)
                encoder.encode(product, forKey: "product")
                encoder.encode(recurring, forKey: "recurring", isDeepObject: true)
                encoder.encode(startingAfter, forKey: "starting_after")
                encoder.encode(type, forKey: "type")
                return encoder.items
            }
        }

        /// <p>Creates a new price for an existing product. The price can be recurring or one-time.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.Price> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostPrices")
        }

        public struct PostRequest: Encodable {
            /// Whether the price can be used for new purchases. Defaults to `true`.
            public var isActive: Bool?
            /// Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
            public var billingScheme: BillingScheme?
            /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            public var currency: String
            /// Prices defined in each available currency option. Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            public var currencyOptions: [String: CurrencyOption]?
            /// Custom_unit_amount
            ///
            /// When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
            public var customUnitAmount: CustomUnitAmount?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// A lookup key used to retrieve prices dynamically from a static string. This may be up to 200 characters.
            public var lookupKey: String?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: [String: String]?
            /// A brief description of the price, hidden from customers.
            public var nickname: String?
            /// The ID of the product that this price will belong to.
            public var product: String?
            /// Inline_product_params
            ///
            /// These fields can be used to create a new product that this price will belong to.
            public var productData: ProductData?
            /// The recurring components of a price such as `interval` and `usage_type`.
            public var recurring: Recurring?
            /// Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            public var taxBehavior: TaxBehavior?
            /// Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
            public var tiers: [Tier]?
            /// Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price, in `graduated` tiering pricing can successively change as the quantity grows.
            public var tiersMode: TiersMode?
            /// If set to true, will atomically remove the lookup key from the existing price, and assign it to this price.
            public var isTransferLookupKey: Bool?
            /// Transform_usage_param
            ///
            /// Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
            public var transformQuantity: TransformQuantity?
            /// A positive integer in cents (or local equivalent) (or 0 for a free price) representing how much to charge. One of `unit_amount` or `custom_unit_amount` is required, unless `billing_scheme=tiered`.
            public var unitAmount: Int?
            /// Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
            public var unitAmountDecimal: String?

            /// Describes how to compute the price per period. Either `per_unit` or `tiered`. `per_unit` indicates that the fixed amount (specified in `unit_amount` or `unit_amount_decimal`) will be charged per unit in `quantity` (for prices with `usage_type=licensed`), or per unit of total usage (for prices with `usage_type=metered`). `tiered` indicates that the unit pricing will be computed using a tiering strategy as defined using the `tiers` and `tiers_mode` attributes.
            public enum BillingScheme: String, Codable, CaseIterable {
                case perUnit = "per_unit"
                case tiered
            }

            /// Currency_option
            public struct CurrencyOption: Encodable {
                /// Custom_unit_amount
                public var customUnitAmount: CustomUnitAmount?
                public var taxBehavior: TaxBehavior?
                public var tiers: [Tier]?
                public var unitAmount: Int?
                public var unitAmountDecimal: String?

                /// Custom_unit_amount
                public struct CustomUnitAmount: Encodable {
                    public var isEnabled: Bool
                    public var maximum: Int?
                    public var minimum: Int?
                    public var preset: Int?

                    public init(isEnabled: Bool, maximum: Int? = nil, minimum: Int? = nil, preset: Int? = nil) {
                        self.isEnabled = isEnabled
                        self.maximum = maximum
                        self.minimum = minimum
                        self.preset = preset
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(isEnabled, forKey: "enabled")
                        encoder.encode(maximum, forKey: "maximum")
                        encoder.encode(minimum, forKey: "minimum")
                        encoder.encode(preset, forKey: "preset")
                        return encoder.items
                    }
                }

                public enum TaxBehavior: String, Codable, CaseIterable {
                    case exclusive
                    case inclusive
                    case unspecified
                }

                public struct Tier: Encodable {
                    public var flatAmount: Int?
                    public var flatAmountDecimal: String?
                    public var unitAmount: Int?
                    public var unitAmountDecimal: String?
                    public var upTo: UpTo

                    public struct UpTo: Encodable {
                        public var object: Object?
                        public var int: Int?

                        public enum Object: String, Codable, CaseIterable {
                            case inf
                        }

                        public init(object: Object? = nil, int: Int? = nil) {
                            self.object = object
                            self.int = int
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(object, forKey: "object")
                            encoder.encode(int, forKey: "int")
                            return encoder.items
                        }
                    }

                    public init(flatAmount: Int? = nil, flatAmountDecimal: String? = nil, unitAmount: Int? = nil, unitAmountDecimal: String? = nil, upTo: UpTo) {
                        self.flatAmount = flatAmount
                        self.flatAmountDecimal = flatAmountDecimal
                        self.unitAmount = unitAmount
                        self.unitAmountDecimal = unitAmountDecimal
                        self.upTo = upTo
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(flatAmount, forKey: "flat_amount")
                        encoder.encode(flatAmountDecimal, forKey: "flat_amount_decimal")
                        encoder.encode(unitAmount, forKey: "unit_amount")
                        encoder.encode(unitAmountDecimal, forKey: "unit_amount_decimal")
                        encoder.encode(upTo, forKey: "up_to")
                        return encoder.items
                    }
                }

                public init(customUnitAmount: CustomUnitAmount? = nil, taxBehavior: TaxBehavior? = nil, tiers: [Tier]? = nil, unitAmount: Int? = nil, unitAmountDecimal: String? = nil) {
                    self.customUnitAmount = customUnitAmount
                    self.taxBehavior = taxBehavior
                    self.tiers = tiers
                    self.unitAmount = unitAmount
                    self.unitAmountDecimal = unitAmountDecimal
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(customUnitAmount, forKey: "custom_unit_amount")
                    encoder.encode(taxBehavior, forKey: "tax_behavior")
                    encoder.encode(tiers, forKey: "tiers")
                    encoder.encode(unitAmount, forKey: "unit_amount")
                    encoder.encode(unitAmountDecimal, forKey: "unit_amount_decimal")
                    return encoder.items
                }
            }

            /// Custom_unit_amount
            ///
            /// When set, provides configuration for the amount to be adjusted by the customer during Checkout Sessions and Payment Links.
            public struct CustomUnitAmount: Encodable {
                public var isEnabled: Bool
                public var maximum: Int?
                public var minimum: Int?
                public var preset: Int?

                public init(isEnabled: Bool, maximum: Int? = nil, minimum: Int? = nil, preset: Int? = nil) {
                    self.isEnabled = isEnabled
                    self.maximum = maximum
                    self.minimum = minimum
                    self.preset = preset
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(isEnabled, forKey: "enabled")
                    encoder.encode(maximum, forKey: "maximum")
                    encoder.encode(minimum, forKey: "minimum")
                    encoder.encode(preset, forKey: "preset")
                    return encoder.items
                }
            }

            /// Inline_product_params
            ///
            /// These fields can be used to create a new product that this price will belong to.
            public struct ProductData: Encodable {
                public var isActive: Bool?
                public var id: String?
                public var metadata: [String: String]?
                public var name: String
                public var statementDescriptor: String?
                public var taxCode: String?
                public var unitLabel: String?

                public init(isActive: Bool? = nil, id: String? = nil, metadata: [String: String]? = nil, name: String, statementDescriptor: String? = nil, taxCode: String? = nil, unitLabel: String? = nil) {
                    self.isActive = isActive
                    self.id = id
                    self.metadata = metadata
                    self.name = name
                    self.statementDescriptor = statementDescriptor
                    self.taxCode = taxCode
                    self.unitLabel = unitLabel
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(isActive, forKey: "active")
                    encoder.encode(id, forKey: "id")
                    encoder.encode(metadata, forKey: "metadata")
                    encoder.encode(name, forKey: "name")
                    encoder.encode(statementDescriptor, forKey: "statement_descriptor")
                    encoder.encode(taxCode, forKey: "tax_code")
                    encoder.encode(unitLabel, forKey: "unit_label")
                    return encoder.items
                }
            }

            /// The recurring components of a price such as `interval` and `usage_type`.
            public struct Recurring: Encodable {
                public var aggregateUsage: AggregateUsage?
                public var interval: Interval
                public var intervalCount: Int?
                public var usageType: UsageType?

                public enum AggregateUsage: String, Codable, CaseIterable {
                    case lastDuringPeriod = "last_during_period"
                    case lastEver = "last_ever"
                    case max
                    case sum
                }

                public enum Interval: String, Codable, CaseIterable {
                    case day
                    case month
                    case week
                    case year
                }

                public enum UsageType: String, Codable, CaseIterable {
                    case licensed
                    case metered
                }

                public init(aggregateUsage: AggregateUsage? = nil, interval: Interval, intervalCount: Int? = nil, usageType: UsageType? = nil) {
                    self.aggregateUsage = aggregateUsage
                    self.interval = interval
                    self.intervalCount = intervalCount
                    self.usageType = usageType
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(aggregateUsage, forKey: "aggregate_usage")
                    encoder.encode(interval, forKey: "interval")
                    encoder.encode(intervalCount, forKey: "interval_count")
                    encoder.encode(usageType, forKey: "usage_type")
                    return encoder.items
                }
            }

            /// Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
            public enum TaxBehavior: String, Codable, CaseIterable {
                case exclusive
                case inclusive
                case unspecified
            }

            public struct Tier: Encodable {
                public var flatAmount: Int?
                public var flatAmountDecimal: String?
                public var unitAmount: Int?
                public var unitAmountDecimal: String?
                public var upTo: UpTo

                public struct UpTo: Encodable {
                    public var object: Object?
                    public var int: Int?

                    public enum Object: String, Codable, CaseIterable {
                        case inf
                    }

                    public init(object: Object? = nil, int: Int? = nil) {
                        self.object = object
                        self.int = int
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(object, forKey: "object")
                        encoder.encode(int, forKey: "int")
                        return encoder.items
                    }
                }

                public init(flatAmount: Int? = nil, flatAmountDecimal: String? = nil, unitAmount: Int? = nil, unitAmountDecimal: String? = nil, upTo: UpTo) {
                    self.flatAmount = flatAmount
                    self.flatAmountDecimal = flatAmountDecimal
                    self.unitAmount = unitAmount
                    self.unitAmountDecimal = unitAmountDecimal
                    self.upTo = upTo
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(flatAmount, forKey: "flat_amount")
                    encoder.encode(flatAmountDecimal, forKey: "flat_amount_decimal")
                    encoder.encode(unitAmount, forKey: "unit_amount")
                    encoder.encode(unitAmountDecimal, forKey: "unit_amount_decimal")
                    encoder.encode(upTo, forKey: "up_to")
                    return encoder.items
                }
            }

            /// Defines if the tiering price should be `graduated` or `volume` based. In `volume`-based tiering, the maximum quantity within a period determines the per unit price, in `graduated` tiering pricing can successively change as the quantity grows.
            public enum TiersMode: String, Codable, CaseIterable {
                case graduated
                case volume
            }

            /// Transform_usage_param
            ///
            /// Apply a transformation to the reported usage or set quantity before computing the billed price. Cannot be combined with `tiers`.
            public struct TransformQuantity: Encodable {
                public var divideBy: Int
                public var round: Round

                public enum Round: String, Codable, CaseIterable {
                    case down
                    case up
                }

                public init(divideBy: Int, round: Round) {
                    self.divideBy = divideBy
                    self.round = round
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(divideBy, forKey: "divide_by")
                    encoder.encode(round, forKey: "round")
                    return encoder.items
                }
            }

            public init(isActive: Bool? = nil, billingScheme: BillingScheme? = nil, currency: String, currencyOptions: [String: CurrencyOption]? = nil, customUnitAmount: CustomUnitAmount? = nil, expand: [String]? = nil, lookupKey: String? = nil, metadata: [String: String]? = nil, nickname: String? = nil, product: String? = nil, productData: ProductData? = nil, recurring: Recurring? = nil, taxBehavior: TaxBehavior? = nil, tiers: [Tier]? = nil, tiersMode: TiersMode? = nil, isTransferLookupKey: Bool? = nil, transformQuantity: TransformQuantity? = nil, unitAmount: Int? = nil, unitAmountDecimal: String? = nil) {
                self.isActive = isActive
                self.billingScheme = billingScheme
                self.currency = currency
                self.currencyOptions = currencyOptions
                self.customUnitAmount = customUnitAmount
                self.expand = expand
                self.lookupKey = lookupKey
                self.metadata = metadata
                self.nickname = nickname
                self.product = product
                self.productData = productData
                self.recurring = recurring
                self.taxBehavior = taxBehavior
                self.tiers = tiers
                self.tiersMode = tiersMode
                self.isTransferLookupKey = isTransferLookupKey
                self.transformQuantity = transformQuantity
                self.unitAmount = unitAmount
                self.unitAmountDecimal = unitAmountDecimal
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isActive, forKey: "active")
                encoder.encode(billingScheme, forKey: "billing_scheme")
                encoder.encode(currency, forKey: "currency")
                encoder.encode(currencyOptions, forKey: "currency_options")
                encoder.encode(customUnitAmount, forKey: "custom_unit_amount")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(lookupKey, forKey: "lookup_key")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(nickname, forKey: "nickname")
                encoder.encode(product, forKey: "product")
                encoder.encode(productData, forKey: "product_data")
                encoder.encode(recurring, forKey: "recurring")
                encoder.encode(taxBehavior, forKey: "tax_behavior")
                encoder.encode(tiers, forKey: "tiers")
                encoder.encode(tiersMode, forKey: "tiers_mode")
                encoder.encode(isTransferLookupKey, forKey: "transfer_lookup_key")
                encoder.encode(transformQuantity, forKey: "transform_quantity")
                encoder.encode(unitAmount, forKey: "unit_amount")
                encoder.encode(unitAmountDecimal, forKey: "unit_amount_decimal")
                return encoder.items
            }
        }
    }
}