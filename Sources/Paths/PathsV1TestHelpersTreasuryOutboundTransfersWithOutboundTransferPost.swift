// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.TestHelpers.Treasury.OutboundTransfers.WithOutboundTransfer {
    public var post: Post {
        Post(path: path + "/post")
    }

    public struct Post {
        /// Path: `/v1/test_helpers/treasury/outbound_transfers/{outbound_transfer}/post`
        public let path: String

        /// <p>Transitions a test mode created OutboundTransfer to the <code>posted</code> status. The OutboundTransfer must already be in the <code>processing</code> state.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.TreasuryOutboundTransfer> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostTestHelpersTreasuryOutboundTransfersOutboundTransferPost")
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
