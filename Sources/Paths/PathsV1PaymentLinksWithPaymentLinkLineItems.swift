// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.PaymentLinks.WithPaymentLink {
    public var lineItems: LineItems {
        LineItems(path: path + "/line_items")
    }

    public struct LineItems {
        /// Path: `/v1/payment_links/{payment_link}/line_items`
        public let path: String

        /// <p>When retrieving a payment link, there is an includable <strong>line_items</strong> property containing the first handful of those items. There is also a URL where you can retrieve the full (paginated) list of line items.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetPaymentLinksPaymentLinkLineItems")
        }

        /// PaymentLinksResourceListLineItems
        public struct GetResponse: Decodable {
            /// Details about each object.
            public var data: [StripeKit.Item]
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

            public init(data: [StripeKit.Item], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.Item].self, forKey: "data")
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
