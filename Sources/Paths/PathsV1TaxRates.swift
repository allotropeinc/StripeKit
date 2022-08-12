// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var taxRates: TaxRates {
        TaxRates(path: "/v1/tax_rates")
    }

    public struct TaxRates {
        /// Path: `/v1/tax_rates`
        public let path: String

        /// <p>Returns a list of your tax rates. Tax rates are returned sorted by creation date, with the most recently created tax rates appearing first.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetTaxRates")
        }

        /// TaxRatesList
        public struct GetResponse: Decodable {
            public var data: [StripeKit.TaxRate]
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

            public init(data: [StripeKit.TaxRate], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.TaxRate].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var isActive: Bool?
            public var created: Created?
            public var endingBefore: String?
            public var expand: [String]?
            public var isInclusive: Bool?
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

            public init(isActive: Bool? = nil, created: Created? = nil, endingBefore: String? = nil, expand: [String]? = nil, isInclusive: Bool? = nil, limit: Int? = nil, startingAfter: String? = nil) {
                self.isActive = isActive
                self.created = created
                self.endingBefore = endingBefore
                self.expand = expand
                self.isInclusive = isInclusive
                self.limit = limit
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isActive, forKey: "active")
                encoder.encode(created, forKey: "created", isDeepObject: true)
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(isInclusive, forKey: "inclusive")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }

        /// <p>Creates a new tax rate.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.TaxRate> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostTaxRates")
        }

        public struct PostRequest: Encodable {
            /// Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
            public var isActive: Bool?
            /// Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
            public var country: String?
            /// An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
            public var description: String?
            /// The display name of the tax rate, which will be shown to users.
            public var displayName: String
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// This specifies if the tax rate is inclusive or exclusive.
            public var isInclusive: Bool
            /// The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
            public var jurisdiction: String?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: [String: String]?
            /// This represents the tax rate percent out of 100.
            public var percentage: Double
            /// [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, "NY" for New York, United States.
            public var state: String?
            /// The high-level tax type, such as `vat` or `sales_tax`.
            public var taxType: TaxType?

            /// The high-level tax type, such as `vat` or `sales_tax`.
            public enum TaxType: String, Codable, CaseIterable {
                case gst
                case hst
                case jct
                case pst
                case qst
                case rst
                case salesTax = "sales_tax"
                case vat
            }

            public init(isActive: Bool? = nil, country: String? = nil, description: String? = nil, displayName: String, expand: [String]? = nil, isInclusive: Bool, jurisdiction: String? = nil, metadata: [String: String]? = nil, percentage: Double, state: String? = nil, taxType: TaxType? = nil) {
                self.isActive = isActive
                self.country = country
                self.description = description
                self.displayName = displayName
                self.expand = expand
                self.isInclusive = isInclusive
                self.jurisdiction = jurisdiction
                self.metadata = metadata
                self.percentage = percentage
                self.state = state
                self.taxType = taxType
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isActive, forKey: "active")
                encoder.encode(country, forKey: "country")
                encoder.encode(description, forKey: "description")
                encoder.encode(displayName, forKey: "display_name")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(isInclusive, forKey: "inclusive")
                encoder.encode(jurisdiction, forKey: "jurisdiction")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(percentage, forKey: "percentage")
                encoder.encode(state, forKey: "state")
                encoder.encode(taxType, forKey: "tax_type")
                return encoder.items
            }
        }
    }
}
