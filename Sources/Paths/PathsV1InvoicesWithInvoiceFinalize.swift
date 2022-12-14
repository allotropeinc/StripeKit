// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Invoices.WithInvoice {
    public var finalize: Finalize {
        Finalize(path: path + "/finalize")
    }

    public struct Finalize {
        /// Path: `/v1/invoices/{invoice}/finalize`
        public let path: String

        /// <p>Stripe automatically finalizes drafts before sending and attempting payment on invoices. However, if you’d like to finalize a draft invoice manually, you can do so using this method.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Invoice> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostInvoicesInvoiceFinalize")
        }

        public struct PostRequest: Encodable {
            /// Controls whether Stripe will perform [automatic collection](https://stripe.com/docs/invoicing/automatic-charging) of the invoice. When `false`, the invoice's state will not automatically advance without an explicit action.
            public var isAutoAdvance: Bool?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?

            public init(isAutoAdvance: Bool? = nil, expand: [String]? = nil) {
                self.isAutoAdvance = isAutoAdvance
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isAutoAdvance, forKey: "auto_advance")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
