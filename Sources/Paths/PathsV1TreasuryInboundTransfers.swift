// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Treasury {
    public var inboundTransfers: InboundTransfers {
        InboundTransfers(path: path + "/inbound_transfers")
    }

    public struct InboundTransfers {
        /// Path: `/v1/treasury/inbound_transfers`
        public let path: String

        /// <p>Returns a list of InboundTransfers sent from the specified FinancialAccount.</p>
        public func get(parameters: GetParameters) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters.asQuery, id: "GetTreasuryInboundTransfers")
        }

        /// TreasuryInboundTransfersResourceInboundTransferList
        public struct GetResponse: Decodable {
            /// Details about each object.
            public var data: [StripeKit.TreasuryInboundTransfer]
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

            public init(data: [StripeKit.TreasuryInboundTransfer], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.TreasuryInboundTransfer].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var endingBefore: String?
            public var expand: [String]?
            public var financialAccount: String
            public var limit: Int?
            public var startingAfter: String?
            public var status: Status?

            public enum Status: String, Codable, CaseIterable {
                case canceled
                case failed
                case processing
                case succeeded
            }

            public init(endingBefore: String? = nil, expand: [String]? = nil, financialAccount: String, limit: Int? = nil, startingAfter: String? = nil, status: Status? = nil) {
                self.endingBefore = endingBefore
                self.expand = expand
                self.financialAccount = financialAccount
                self.limit = limit
                self.startingAfter = startingAfter
                self.status = status
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(financialAccount, forKey: "financial_account")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                encoder.encode(status, forKey: "status")
                return encoder.items
            }
        }

        /// <p>Creates an InboundTransfer.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.TreasuryInboundTransfer> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostTreasuryInboundTransfers")
        }

        public struct PostRequest: Encodable {
            /// Amount (in cents) to be transferred.
            public var amount: Int
            /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            public var currency: String
            /// An arbitrary string attached to the object. Often useful for displaying to users.
            public var description: String?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// The FinancialAccount to send funds to.
            public var financialAccount: String
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: [String: String]?
            /// The origin payment method to be debited for the InboundTransfer.
            public var originPaymentMethod: String
            /// The complete description that appears on your customers' statements. Maximum 10 characters.
            public var statementDescriptor: String?

            public init(amount: Int, currency: String, description: String? = nil, expand: [String]? = nil, financialAccount: String, metadata: [String: String]? = nil, originPaymentMethod: String, statementDescriptor: String? = nil) {
                self.amount = amount
                self.currency = currency
                self.description = description
                self.expand = expand
                self.financialAccount = financialAccount
                self.metadata = metadata
                self.originPaymentMethod = originPaymentMethod
                self.statementDescriptor = statementDescriptor
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(amount, forKey: "amount")
                encoder.encode(currency, forKey: "currency")
                encoder.encode(description, forKey: "description")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(financialAccount, forKey: "financial_account")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(originPaymentMethod, forKey: "origin_payment_method")
                encoder.encode(statementDescriptor, forKey: "statement_descriptor")
                return encoder.items
            }
        }
    }
}
