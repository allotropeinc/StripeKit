// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Checkout.Sessions.WithSession {
    public var expire: Expire {
        Expire(path: path + "/expire")
    }

    public struct Expire {
        /// Path: `/v1/checkout/sessions/{session}/expire`
        public let path: String

        /// <p>A Session can be expired when it is in one of these statuses: <code>open</code> </p>
        /// 
        /// <p>After it expires, a customer can’t complete a Session and customers loading the Session see a message saying the Session is expired.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.CheckoutSession> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostCheckoutSessionsSessionExpire")
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
