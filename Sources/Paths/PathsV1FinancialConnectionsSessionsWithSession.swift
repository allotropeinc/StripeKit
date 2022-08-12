// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.FinancialConnections.Sessions {
    public func session(_ session: String) -> WithSession {
        WithSession(path: "\(path)/\(session)")
    }

    public struct WithSession {
        /// Path: `/v1/financial_connections/sessions/{session}`
        public let path: String

        /// <p>Retrieves the details of a Financial Connections <code>Session</code></p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.FinancialConnectionsSession> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetFinancialConnectionsSessionsSession")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}
