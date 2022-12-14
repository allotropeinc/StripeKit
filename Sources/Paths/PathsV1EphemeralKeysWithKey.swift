// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.EphemeralKeys {
    public func key(_ key: String) -> WithKey {
        WithKey(path: "\(path)/\(key)")
    }

    public struct WithKey {
        /// Path: `/v1/ephemeral_keys/{key}`
        public let path: String

        /// <p>Invalidates a short-lived API key for a given resource.</p>
        public func delete(_ body: DeleteRequest? = nil) -> Request<StripeKit.EphemeralKey> {
            Request(method: "DELETE", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "DeleteEphemeralKeysKey")
        }

        public struct DeleteRequest: Encodable {
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
