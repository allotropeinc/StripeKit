// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.ApplicationFees.WithID {
    public var refund: Refund {
        Refund(path: path + "/refund")
    }

    public struct Refund {
        /// Path: `/v1/application_fees/{id}/refund`
        public let path: String

        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.ApplicationFee> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostApplicationFeesIdRefund")
        }

        public struct PostRequest: Encodable {
            public var amount: Int?
            public var directive: String?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?

            public init(amount: Int? = nil, directive: String? = nil, expand: [String]? = nil) {
                self.amount = amount
                self.directive = directive
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(amount, forKey: "amount")
                encoder.encode(directive, forKey: "directive")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
