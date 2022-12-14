// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Treasury {
    public var creditReversals: CreditReversals {
        CreditReversals(path: path + "/credit_reversals")
    }

    public struct CreditReversals {
        /// Path: `/v1/treasury/credit_reversals`
        public let path: String

        /// <p>Returns a list of CreditReversals.</p>
        public func get(parameters: GetParameters) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters.asQuery, id: "GetTreasuryCreditReversals")
        }

        /// TreasuryReceivedCreditsResourceCreditReversalList
        public struct GetResponse: Decodable {
            /// Details about each object.
            public var data: [StripeKit.TreasuryCreditReversal]
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

            public init(data: [StripeKit.TreasuryCreditReversal], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.TreasuryCreditReversal].self, forKey: "data")
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
            public var receivedCredit: String?
            public var startingAfter: String?
            public var status: Status?

            public enum Status: String, Codable, CaseIterable {
                case canceled
                case posted
                case processing
            }

            public init(endingBefore: String? = nil, expand: [String]? = nil, financialAccount: String, limit: Int? = nil, receivedCredit: String? = nil, startingAfter: String? = nil, status: Status? = nil) {
                self.endingBefore = endingBefore
                self.expand = expand
                self.financialAccount = financialAccount
                self.limit = limit
                self.receivedCredit = receivedCredit
                self.startingAfter = startingAfter
                self.status = status
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(financialAccount, forKey: "financial_account")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(receivedCredit, forKey: "received_credit")
                encoder.encode(startingAfter, forKey: "starting_after")
                encoder.encode(status, forKey: "status")
                return encoder.items
            }
        }

        /// <p>Reverses a ReceivedCredit and creates a CreditReversal object.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.TreasuryCreditReversal> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostTreasuryCreditReversals")
        }

        public struct PostRequest: Encodable {
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: [String: String]?
            /// The ReceivedCredit to reverse.
            public var receivedCredit: String

            public init(expand: [String]? = nil, metadata: [String: String]? = nil, receivedCredit: String) {
                self.expand = expand
                self.metadata = metadata
                self.receivedCredit = receivedCredit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(expand, forKey: "expand")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(receivedCredit, forKey: "received_credit")
                return encoder.items
            }
        }
    }
}
