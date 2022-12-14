// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Treasury.OutboundTransfers {
    public func outboundTransfer(_ outboundTransfer: String) -> WithOutboundTransfer {
        WithOutboundTransfer(path: "\(path)/\(outboundTransfer)")
    }

    public struct WithOutboundTransfer {
        /// Path: `/v1/treasury/outbound_transfers/{outbound_transfer}`
        public let path: String

        /// <p>Retrieves the details of an existing OutboundTransfer by passing the unique OutboundTransfer ID from either the OutboundTransfer creation request or OutboundTransfer list.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.TreasuryOutboundTransfer> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetTreasuryOutboundTransfersOutboundTransfer")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}
