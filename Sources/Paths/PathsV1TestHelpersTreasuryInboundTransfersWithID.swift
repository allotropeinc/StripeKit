// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.TestHelpers.Treasury.InboundTransfers {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/test_helpers/treasury/inbound_transfers/{id}`
        public let path: String
    }
}
