// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Customers.WithCustomer.BankAccounts.WithID {
    public var verify: Verify {
        Verify(path: path + "/verify")
    }

    public struct Verify {
        /// Path: `/v1/customers/{customer}/bank_accounts/{id}/verify`
        public let path: String

        /// <p>Verify a specified bank account for a given customer.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.BankAccount> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostCustomersCustomerBankAccountsIdVerify")
        }

        public struct PostRequest: Encodable {
            /// Two positive integers, in *cents*, equal to the values of the microdeposits sent to the bank account.
            public var amounts: [Int]?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?

            public init(amounts: [Int]? = nil, expand: [String]? = nil) {
                self.amounts = amounts
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(amounts, forKey: "amounts")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
