// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.TestHelpers.Issuing.Cards.WithCard.Shipping {
    public var `return`: Return {
        Return(path: path + "/return")
    }

    public struct Return {
        /// Path: `/v1/test_helpers/issuing/cards/{card}/shipping/return`
        public let path: String

        /// <p>Updates the shipping status of the specified Issuing <code>Card</code> object to <code>returned</code>.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.IssuingCard> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostTestHelpersIssuingCardsCardShippingReturn")
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
