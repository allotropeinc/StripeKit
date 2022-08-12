// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Customers.WithCustomer {
    public var discount: Discount {
        Discount(path: path + "/discount")
    }

    public struct Discount {
        /// Path: `/v1/customers/{customer}/discount`
        public let path: String

        public func get(expand: [String]? = nil) -> Request<StripeKit.Discount> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetCustomersCustomerDiscount")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Removes the currently applied discount on a customer.</p>
        public var delete: Request<StripeKit.DeletedDiscount> {
            Request(method: "DELETE", url: path, id: "DeleteCustomersCustomerDiscount")
        }
    }
}