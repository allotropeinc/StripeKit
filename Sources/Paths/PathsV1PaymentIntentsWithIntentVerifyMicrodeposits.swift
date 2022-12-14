// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.PaymentIntents.WithIntent {
    public var verifyMicrodeposits: VerifyMicrodeposits {
        VerifyMicrodeposits(path: path + "/verify_microdeposits")
    }

    public struct VerifyMicrodeposits {
        /// Path: `/v1/payment_intents/{intent}/verify_microdeposits`
        public let path: String

        /// <p>Verifies microdeposits on a PaymentIntent object.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.PaymentIntent> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostPaymentIntentsIntentVerifyMicrodeposits")
        }

        public struct PostRequest: Encodable {
            /// Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
            public var amounts: [Int]?
            /// The client secret of the PaymentIntent.
            public var clientSecret: String?
            /// A six-character code starting with SM present in the microdeposit sent to the bank account.
            public var descriptorCode: String?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?

            public init(amounts: [Int]? = nil, clientSecret: String? = nil, descriptorCode: String? = nil, expand: [String]? = nil) {
                self.amounts = amounts
                self.clientSecret = clientSecret
                self.descriptorCode = descriptorCode
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(amounts, forKey: "amounts")
                encoder.encode(clientSecret, forKey: "client_secret")
                encoder.encode(descriptorCode, forKey: "descriptor_code")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
