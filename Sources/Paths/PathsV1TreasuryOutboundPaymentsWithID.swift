// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Treasury.OutboundPayments {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/treasury/outbound_payments/{id}`
        public let path: String

        /// <p>Retrieves the details of an existing OutboundPayment by passing the unique OutboundPayment ID from either the OutboundPayment creation request or OutboundPayment list.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.TreasuryOutboundPayment> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetTreasuryOutboundPaymentsId")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}