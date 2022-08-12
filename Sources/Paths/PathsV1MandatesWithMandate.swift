// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Mandates {
    public func mandate(_ mandate: String) -> WithMandate {
        WithMandate(path: "\(path)/\(mandate)")
    }

    public struct WithMandate {
        /// Path: `/v1/mandates/{mandate}`
        public let path: String

        /// <p>Retrieves a Mandate object.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.Mandate> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetMandatesMandate")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}
