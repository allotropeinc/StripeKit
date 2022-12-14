// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.TestHelpers.Treasury {
    public var inboundTransfers: InboundTransfers {
        InboundTransfers(path: path + "/inbound_transfers")
    }

    public struct InboundTransfers {
        /// Path: `/v1/test_helpers/treasury/inbound_transfers`
        public let path: String
    }
}
