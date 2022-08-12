// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Customers.WithCustomer.TaxIDs {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/customers/{customer}/tax_ids/{id}`
        public let path: String

        /// <p>Retrieves the <code>TaxID</code> object with the given identifier.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.TaxID> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetCustomersCustomerTaxIdsId")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Deletes an existing <code>TaxID</code> object.</p>
        public var delete: Request<StripeKit.DeletedTaxID> {
            Request(method: "DELETE", url: path, id: "DeleteCustomersCustomerTaxIdsId")
        }
    }
}