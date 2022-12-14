// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var balance: Balance {
        Balance(path: "/v1/balance")
    }

    public struct Balance {
        /// Path: `/v1/balance`
        public let path: String

        /// <p>Retrieves the current account balance, based on the authentication that was used to make the request.
        ///  For a sample request, see <a href="/docs/connect/account-balances#accounting-for-negative-balances">Accounting for negative balances</a>.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.Balance> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetBalance")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}
