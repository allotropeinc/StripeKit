// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Subscriptions {
    public var search: Search {
        Search(path: path + "/search")
    }

    public struct Search {
        /// Path: `/v1/subscriptions/search`
        public let path: String

        /// <p>Search for subscriptions you’ve previously created using Stripe’s <a href="/docs/search#search-query-language">Search Query Language</a>.
        /// Don’t use search in read-after-write flows where strict consistency is necessary. Under normal operating
        /// conditions, data is searchable in less than a minute. Occasionally, propagation of new or updated data can be up
        /// to an hour behind during outages. Search functionality is not available to merchants in India.</p>
        public func get(parameters: GetParameters) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters.asQuery, id: "GetSubscriptionsSearch")
        }

        /// SearchResult
        public struct GetResponse: Decodable {
            public var data: [StripeKit.Subscription]
            public var hasMore: Bool
            public var nextPage: String?
            /// String representing the object's type. Objects of the same type share the same value.
            public var object: Object
            /// The total number of objects that match the query, only accurate up to 10,000.
            public var totalCount: Int?
            public var url: String

            /// String representing the object's type. Objects of the same type share the same value.
            public enum Object: String, Codable, CaseIterable {
                case searchResult = "search_result"
            }

            public init(data: [StripeKit.Subscription], hasMore: Bool, nextPage: String? = nil, object: Object, totalCount: Int? = nil, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.nextPage = nextPage
                self.object = object
                self.totalCount = totalCount
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.Subscription].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.nextPage = try values.decodeIfPresent(String.self, forKey: "next_page")
                self.object = try values.decode(Object.self, forKey: "object")
                self.totalCount = try values.decodeIfPresent(Int.self, forKey: "total_count")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var expand: [String]?
            public var limit: Int?
            public var page: String?
            public var query: String

            public init(expand: [String]? = nil, limit: Int? = nil, page: String? = nil, query: String) {
                self.expand = expand
                self.limit = limit
                self.page = page
                self.query = query
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(page, forKey: "page")
                encoder.encode(query, forKey: "query")
                return encoder.items
            }
        }
    }
}
