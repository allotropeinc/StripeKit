// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.PaymentIntents.WithIntent {
    public var applyCustomerBalance: ApplyCustomerBalance {
        ApplyCustomerBalance(path: path + "/apply_customer_balance")
    }

    public struct ApplyCustomerBalance {
        /// Path: `/v1/payment_intents/{intent}/apply_customer_balance`
        public let path: String

        /// <p>Manually reconcile the remaining amount for a customer_balance PaymentIntent.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.PaymentIntent> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostPaymentIntentsIntentApplyCustomerBalance")
        }

        public struct PostRequest: Encodable {
            /// Amount intended to be applied to this PaymentIntent from the customer’s cash balance.
            /// 
            /// A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency).
            /// 
            /// The maximum amount is the amount of the PaymentIntent.
            /// 
            /// When omitted, the amount defaults to the remaining amount requested on the PaymentIntent.
            public var amount: Int?
            /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            public var currency: String?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?

            public init(amount: Int? = nil, currency: String? = nil, expand: [String]? = nil) {
                self.amount = amount
                self.currency = currency
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(amount, forKey: "amount")
                encoder.encode(currency, forKey: "currency")
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
