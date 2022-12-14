// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var shippingRates: ShippingRates {
        ShippingRates(path: "/v1/shipping_rates")
    }

    public struct ShippingRates {
        /// Path: `/v1/shipping_rates`
        public let path: String

        /// <p>Returns a list of your shipping rates.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetShippingRates")
        }

        /// ShippingResourcesShippingRateList
        public struct GetResponse: Decodable {
            public var data: [StripeKit.ShippingRate]
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

            public init(data: [StripeKit.ShippingRate], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.ShippingRate].self, forKey: "data")
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
            public var startingAfter: String?

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

            public init(isActive: Bool? = nil, created: Created? = nil, currency: String? = nil, endingBefore: String? = nil, expand: [String]? = nil, limit: Int? = nil, startingAfter: String? = nil) {
                self.isActive = isActive
                self.created = created
                self.currency = currency
                self.endingBefore = endingBefore
                self.expand = expand
                self.limit = limit
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isActive, forKey: "active")
                encoder.encode(created, forKey: "created", isDeepObject: true)
                encoder.encode(currency, forKey: "currency")
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }

        /// <p>Creates a new shipping rate object.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.ShippingRate> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostShippingRates")
        }

        public struct PostRequest: Encodable {
            /// Delivery_estimate
            ///
            /// The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
            public var deliveryEstimate: DeliveryEstimate?
            /// The name of the shipping rate, meant to be displayable to the customer. This will appear on CheckoutSessions.
            public var displayName: String
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Fixed_amount
            ///
            /// Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
            public var fixedAmount: FixedAmount?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: [String: String]?
            /// Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
            public var taxBehavior: TaxBehavior?
            /// A [tax code](https://stripe.com/docs/tax/tax-categories) ID. The Shipping tax code is `txcd_92010001`.
            public var taxCode: String?
            /// The type of calculation to use on the shipping rate. Can only be `fixed_amount` for now.
            public var type: `Type`?

            /// Delivery_estimate
            ///
            /// The estimated range for how long shipping will take, meant to be displayable to the customer. This will appear on CheckoutSessions.
            public struct DeliveryEstimate: Encodable {
                /// Delivery_estimate_bound
                public var maximum: Maximum?
                /// Delivery_estimate_bound
                public var minimum: Minimum?

                /// Delivery_estimate_bound
                public struct Maximum: Encodable {
                    public var unit: Unit
                    public var value: Int

                    public enum Unit: String, Codable, CaseIterable {
                        case businessDay = "business_day"
                        case day
                        case hour
                        case month
                        case week
                    }

                    public init(unit: Unit, value: Int) {
                        self.unit = unit
                        self.value = value
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(unit, forKey: "unit")
                        encoder.encode(value, forKey: "value")
                        return encoder.items
                    }
                }

                /// Delivery_estimate_bound
                public struct Minimum: Encodable {
                    public var unit: Unit
                    public var value: Int

                    public enum Unit: String, Codable, CaseIterable {
                        case businessDay = "business_day"
                        case day
                        case hour
                        case month
                        case week
                    }

                    public init(unit: Unit, value: Int) {
                        self.unit = unit
                        self.value = value
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(unit, forKey: "unit")
                        encoder.encode(value, forKey: "value")
                        return encoder.items
                    }
                }

                public init(maximum: Maximum? = nil, minimum: Minimum? = nil) {
                    self.maximum = maximum
                    self.minimum = minimum
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(maximum, forKey: "maximum")
                    encoder.encode(minimum, forKey: "minimum")
                    return encoder.items
                }
            }

            /// Fixed_amount
            ///
            /// Describes a fixed amount to charge for shipping. Must be present if type is `fixed_amount`.
            public struct FixedAmount: Encodable {
                public var amount: Int
                public var currency: String
                public var currencyOptions: [String: CurrencyOption]?

                /// Currency_option
                public struct CurrencyOption: Encodable {
                    public var amount: Int
                    public var taxBehavior: TaxBehavior?

                    public enum TaxBehavior: String, Codable, CaseIterable {
                        case exclusive
                        case inclusive
                        case unspecified
                    }

                    public init(amount: Int, taxBehavior: TaxBehavior? = nil) {
                        self.amount = amount
                        self.taxBehavior = taxBehavior
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(amount, forKey: "amount")
                        encoder.encode(taxBehavior, forKey: "tax_behavior")
                        return encoder.items
                    }
                }

                public init(amount: Int, currency: String, currencyOptions: [String: CurrencyOption]? = nil) {
                    self.amount = amount
                    self.currency = currency
                    self.currencyOptions = currencyOptions
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(amount, forKey: "amount")
                    encoder.encode(currency, forKey: "currency")
                    encoder.encode(currencyOptions, forKey: "currency_options")
                    return encoder.items
                }
            }

            /// Specifies whether the rate is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`.
            public enum TaxBehavior: String, Codable, CaseIterable {
                case exclusive
                case inclusive
                case unspecified
            }

            /// The type of calculation to use on the shipping rate. Can only be `fixed_amount` for now.
            public enum `Type`: String, Codable, CaseIterable {
                case fixedAmount = "fixed_amount"
            }

            public init(deliveryEstimate: DeliveryEstimate? = nil, displayName: String, expand: [String]? = nil, fixedAmount: FixedAmount? = nil, metadata: [String: String]? = nil, taxBehavior: TaxBehavior? = nil, taxCode: String? = nil, type: `Type`? = nil) {
                self.deliveryEstimate = deliveryEstimate
                self.displayName = displayName
                self.expand = expand
                self.fixedAmount = fixedAmount
                self.metadata = metadata
                self.taxBehavior = taxBehavior
                self.taxCode = taxCode
                self.type = type
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(deliveryEstimate, forKey: "delivery_estimate")
                encoder.encode(displayName, forKey: "display_name")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(fixedAmount, forKey: "fixed_amount")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(taxBehavior, forKey: "tax_behavior")
                encoder.encode(taxCode, forKey: "tax_code")
                encoder.encode(type, forKey: "type")
                return encoder.items
            }
        }
    }
}
