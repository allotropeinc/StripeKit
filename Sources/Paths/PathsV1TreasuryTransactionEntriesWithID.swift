// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Treasury.TransactionEntries {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/treasury/transaction_entries/{id}`
        public let path: String

        /// <p>Retrieves a TransactionEntry object.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.TreasuryTransactionEntry> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetTreasuryTransactionEntriesId")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}
