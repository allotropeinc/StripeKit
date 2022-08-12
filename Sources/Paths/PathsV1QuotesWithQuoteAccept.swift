// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Quotes.WithQuote {
    public var accept: Accept {
        Accept(path: path + "/accept")
    }

    public struct Accept {
        /// Path: `/v1/quotes/{quote}/accept`
        public let path: String

        /// <p>Accepts the specified quote.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Quote> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostQuotesQuoteAccept")
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
