// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.SetupIntents.WithIntent {
    public var cancel: Cancel {
        Cancel(path: path + "/cancel")
    }

    public struct Cancel {
        /// Path: `/v1/setup_intents/{intent}/cancel`
        public let path: String

        /// <p>A SetupIntent object can be canceled when it is in one of these statuses: <code>requires_payment_method</code>, <code>requires_confirmation</code>, or <code>requires_action</code>. </p>
        /// 
        /// <p>Once canceled, setup is abandoned and any operations on the SetupIntent will fail with an error.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.SetupIntent> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostSetupIntentsIntentCancel")
        }

        public struct PostRequest: Encodable {
            /// Reason for canceling this SetupIntent. Possible values are `abandoned`, `requested_by_customer`, or `duplicate`
            public var cancellationReason: CancellationReason?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?

            /// Reason for canceling this SetupIntent. Possible values are `abandoned`, `requested_by_customer`, or `duplicate`
            public enum CancellationReason: String, Codable, CaseIterable {
                case abandoned
                case duplicate
                case requestedByCustomer = "requested_by_customer"
            }

            public init(cancellationReason: CancellationReason? = nil, expand: [String]? = nil) {
                self.cancellationReason = cancellationReason
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(cancellationReason, forKey: "cancellation_reason")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}