// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Quotes.WithQuote {
    public var finalize: Finalize {
        Finalize(path: path + "/finalize")
    }

    public struct Finalize {
        /// Path: `/v1/quotes/{quote}/finalize`
        public let path: String

        /// <p>Finalizes the quote.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Quote> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostQuotesQuoteFinalize")
        }

        public struct PostRequest: Encodable {
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// A future timestamp on which the quote will be canceled if in `open` or `draft` status. Measured in seconds since the Unix epoch.
            public var expiresAt: Int?

            public init(expand: [String]? = nil, expiresAt: Int? = nil) {
                self.expand = expand
                self.expiresAt = expiresAt
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(expand, forKey: "expand")
                encoder.encode(expiresAt, forKey: "expires_at")
                return encoder.items
            }
        }
    }
}
