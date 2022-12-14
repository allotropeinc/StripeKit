// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Sources.WithSource.SourceTransactions {
    public func sourceTransaction(_ sourceTransaction: String) -> WithSourceTransaction {
        WithSourceTransaction(path: "\(path)/\(sourceTransaction)")
    }

    public struct WithSourceTransaction {
        /// Path: `/v1/sources/{source}/source_transactions/{source_transaction}`
        public let path: String

        /// <p>Retrieve an existing source transaction object. Supply the unique source ID from a source creation request and the source transaction ID and Stripe will return the corresponding up-to-date source object information.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.SourceTransaction> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetSourcesSourceSourceTransactionsSourceTransaction")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}
