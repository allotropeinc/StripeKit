// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Charges.WithCharge {
    public var refunds: Refunds {
        Refunds(path: path + "/refunds")
    }

    public struct Refunds {
        /// Path: `/v1/charges/{charge}/refunds`
        public let path: String

        /// <p>You can see a list of the refunds belonging to a specific charge. Note that the 10 most recent refunds are always available by default on the charge object. If you need more than those 10, you can use this API method and the <code>limit</code> and <code>starting_after</code> parameters to page through additional refunds.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetChargesChargeRefunds")
        }

        /// RefundList
        public struct GetResponse: Decodable {
            /// Details about each object.
            public var data: [StripeKit.Refund]
            /// True if this list has another page of items after this one that can be fetched.
            public var hasMore: Bool
            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public var object: Object
            /// The URL where this list can be accessed.
            public var url: String

            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public enum Object: String, Codable, CaseIterable {
                case list
            }

            public init(data: [StripeKit.Refund], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.Refund].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var endingBefore: String?
            public var expand: [String]?
            public var limit: Int?
            public var startingAfter: String?

            public init(endingBefore: String? = nil, expand: [String]? = nil, limit: Int? = nil, startingAfter: String? = nil) {
                self.endingBefore = endingBefore
                self.expand = expand
                self.limit = limit
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }

        /// <p>Create a refund.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Refund> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostChargesChargeRefunds")
        }

        public struct PostRequest: Encodable {
            /// A positive integer representing how much to refund.
            public var amount: Int?
            /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            public var currency: String?
            /// Customer whose customer balance to refund from.
            public var customer: String?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Address to send refund email, use customer email if not specified
            public var instructionsEmail: String?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// Origin of the refund
            public var origin: Origin?
            public var paymentIntent: String?
            public var reason: Reason?
            public var isRefundApplicationFee: Bool?
            public var isReverseTransfer: Bool?

            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public struct Metadata: Encodable {
                public var stringString: [String: String]?
                public var object: Object?

                public enum Object: String, Codable, CaseIterable {
                    case empty = ""
                }

                public init(stringString: [String: String]? = nil, object: Object? = nil) {
                    self.stringString = stringString
                    self.object = object
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(stringString, forKey: "stringString")
                    encoder.encode(object, forKey: "object")
                    return encoder.items
                }
            }

            /// Origin of the refund
            public enum Origin: String, Codable, CaseIterable {
                case customerBalance = "customer_balance"
            }

            public enum Reason: String, Codable, CaseIterable {
                case duplicate
                case fraudulent
                case requestedByCustomer = "requested_by_customer"
            }

            public init(amount: Int? = nil, currency: String? = nil, customer: String? = nil, expand: [String]? = nil, instructionsEmail: String? = nil, metadata: Metadata? = nil, origin: Origin? = nil, paymentIntent: String? = nil, reason: Reason? = nil, isRefundApplicationFee: Bool? = nil, isReverseTransfer: Bool? = nil) {
                self.amount = amount
                self.currency = currency
                self.customer = customer
                self.expand = expand
                self.instructionsEmail = instructionsEmail
                self.metadata = metadata
                self.origin = origin
                self.paymentIntent = paymentIntent
                self.reason = reason
                self.isRefundApplicationFee = isRefundApplicationFee
                self.isReverseTransfer = isReverseTransfer
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(amount, forKey: "amount")
                encoder.encode(currency, forKey: "currency")
                encoder.encode(customer, forKey: "customer")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(instructionsEmail, forKey: "instructions_email")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(origin, forKey: "origin")
                encoder.encode(paymentIntent, forKey: "payment_intent")
                encoder.encode(reason, forKey: "reason")
                encoder.encode(isRefundApplicationFee, forKey: "refund_application_fee")
                encoder.encode(isReverseTransfer, forKey: "reverse_transfer")
                return encoder.items
            }
        }
    }
}