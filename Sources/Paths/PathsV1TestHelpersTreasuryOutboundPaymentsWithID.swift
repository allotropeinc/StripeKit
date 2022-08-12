// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.TestHelpers.Treasury.OutboundPayments {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/test_helpers/treasury/outbound_payments/{id}`
        public let path: String
    }
}
