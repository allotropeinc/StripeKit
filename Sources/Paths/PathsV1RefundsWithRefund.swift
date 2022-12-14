// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Refunds {
    public func refund(_ refund: String) -> WithRefund {
        WithRefund(path: "\(path)/\(refund)")
    }

    public struct WithRefund {
        /// Path: `/v1/refunds/{refund}`
        public let path: String

        /// <p>Retrieves the details of an existing refund.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.Refund> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetRefundsRefund")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Updates the specified refund by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
        /// 
        /// <p>This request only accepts <code>metadata</code> as an argument.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Refund> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostRefundsRefund")
        }

        public struct PostRequest: Encodable {
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?

            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public struct Metadata: Encodable {
                public var stringString: [String: String]?
                public var object: Object?

                public enum Object: String, Codable, CaseIterable {
                    case empty = ""
                }

                public init(stringString: [String: String]? = nil, object: Object? = nil) {
                    self.stringString = stringString
                    self.object = object
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(stringString, forKey: "stringString")
                    encoder.encode(object, forKey: "object")
                    return encoder.items
                }
            }

            public init(expand: [String]? = nil, metadata: Metadata? = nil) {
                self.expand = expand
                self.metadata = metadata
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(expand, forKey: "expand")
                encoder.encode(metadata, forKey: "metadata")
                return encoder.items
            }
        }
    }
}
