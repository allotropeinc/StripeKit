// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.SubscriptionItems.WithSubscriptionItem {
    public var usageRecordSummaries: UsageRecordSummaries {
        UsageRecordSummaries(path: path + "/usage_record_summaries")
    }

    public struct UsageRecordSummaries {
        /// Path: `/v1/subscription_items/{subscription_item}/usage_record_summaries`
        public let path: String

        /// <p>For the specified subscription item, returns a list of summary objects. Each object in the list provides usage information that’s been summarized from multiple usage records and over a subscription billing period (e.g., 15 usage records in the month of September).</p>
        /// 
        /// <p>The list is sorted in reverse-chronological order (newest first). The first list item represents the most current usage period that hasn’t ended yet. Since new usage records can still be added, the returned summary information for the subscription item’s ID should be seen as unstable until the subscription billing period ends.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetSubscriptionItemsSubscriptionItemUsageRecordSummaries")
        }

        /// UsageEventsResourceUsageRecordSummaryList
        public struct GetResponse: Decodable {
            public var data: [StripeKit.UsageRecordSummary]
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

            public init(data: [StripeKit.UsageRecordSummary], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.UsageRecordSummary].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var endingBefore: String?
            public var expand: [String]?
            public var limit: Int?
            public var startingAfter: String?

            public init(endingBefore: String? = nil, expand: [String]? = nil, limit: Int? = nil, startingAfter: String? = nil) {
                self.endingBefore = endingBefore
                self.expand = expand
                self.limit = limit
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }
    }
}