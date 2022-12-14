// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Radar {
    public var valueLists: ValueLists {
        ValueLists(path: path + "/value_lists")
    }

    public struct ValueLists {
        /// Path: `/v1/radar/value_lists`
        public let path: String

        /// <p>Returns a list of <code>ValueList</code> objects. The objects are sorted in descending order by creation date, with the most recently created object appearing first.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetRadarValueLists")
        }

        /// RadarListListList
        public struct GetResponse: Decodable {
            public var data: [StripeKit.RadarValueList]
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

            public init(data: [StripeKit.RadarValueList], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.RadarValueList].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var alias: String?
            public var contains: String?
            public var created: Created?
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

            public init(alias: String? = nil, contains: String? = nil, created: Created? = nil, endingBefore: String? = nil, expand: [String]? = nil, limit: Int? = nil, startingAfter: String? = nil) {
                self.alias = alias
                self.contains = contains
                self.created = created
                self.endingBefore = endingBefore
                self.expand = expand
                self.limit = limit
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(alias, forKey: "alias")
                encoder.encode(contains, forKey: "contains")
                encoder.encode(created, forKey: "created", isDeepObject: true)
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }

        /// <p>Creates a new <code>ValueList</code> object, which can then be referenced in rules.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.RadarValueList> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostRadarValueLists")
        }

        public struct PostRequest: Encodable {
            /// The name of the value list for use in rules.
            public var alias: String
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Type of the items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, or `customer_id`. Use `string` if the item type is unknown or mixed.
            public var itemType: ItemType?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: [String: String]?
            /// The human-readable name of the value list.
            public var name: String

            /// Type of the items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, or `customer_id`. Use `string` if the item type is unknown or mixed.
            public enum ItemType: String, Codable, CaseIterable {
                case cardBin = "card_bin"
                case cardFingerprint = "card_fingerprint"
                case caseSensitiveString = "case_sensitive_string"
                case country
                case customerID = "customer_id"
                case email
                case ipAddress = "ip_address"
                case string
            }

            public init(alias: String, expand: [String]? = nil, itemType: ItemType? = nil, metadata: [String: String]? = nil, name: String) {
                self.alias = alias
                self.expand = expand
                self.itemType = itemType
                self.metadata = metadata
                self.name = name
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(alias, forKey: "alias")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(itemType, forKey: "item_type")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(name, forKey: "name")
                return encoder.items
            }
        }
    }
}
