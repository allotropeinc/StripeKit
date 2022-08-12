// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.TestHelpers.Refunds {
    public func refund(_ refund: String) -> WithRefund {
        WithRefund(path: "\(path)/\(refund)")
    }

    public struct WithRefund {
        /// Path: `/v1/test_helpers/refunds/{refund}`
        public let path: String
    }
}