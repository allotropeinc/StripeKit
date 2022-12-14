// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Sources.WithSource {
    public var verify: Verify {
        Verify(path: path + "/verify")
    }

    public struct Verify {
        /// Path: `/v1/sources/{source}/verify`
        public let path: String

        /// <p>Verify a given source.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.Source> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostSourcesSourceVerify")
        }

        public struct PostRequest: Encodable {
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// The values needed to verify the source.
            public var values: [String]

            public init(expand: [String]? = nil, values: [String]) {
                self.expand = expand
                self.values = values
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(expand, forKey: "expand")
                encoder.encode(values, forKey: "values")
                return encoder.items
            }
        }
    }
}
