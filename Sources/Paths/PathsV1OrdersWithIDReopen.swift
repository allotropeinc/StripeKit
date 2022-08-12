// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Orders.WithID {
    public var reopen: Reopen {
        Reopen(path: path + "/reopen")
    }

    public struct Reopen {
        /// Path: `/v1/orders/{id}/reopen`
        public let path: String

        /// <p>Reopens a <code>submitted</code> order.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Order> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostOrdersIdReopen")
        }

        public struct PostRequest: Encodable {
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?

            public init(expand: [String]? = nil) {
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}