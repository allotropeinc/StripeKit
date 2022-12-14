// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Customers.WithCustomer.PaymentMethods {
    public func paymentMethod(_ paymentMethod: String) -> WithPaymentMethod {
        WithPaymentMethod(path: "\(path)/\(paymentMethod)")
    }

    public struct WithPaymentMethod {
        /// Path: `/v1/customers/{customer}/payment_methods/{payment_method}`
        public let path: String

        /// <p>Retrieves a PaymentMethod object for a given Customer.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.PaymentMethod> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetCustomersCustomerPaymentMethodsPaymentMethod")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}
