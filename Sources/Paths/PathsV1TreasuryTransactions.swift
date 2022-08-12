// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Treasury {
    public var transactions: Transactions {
        Transactions(path: path + "/transactions")
    }

    public struct Transactions {
        /// Path: `/v1/treasury/transactions`
        public let path: String

        /// <p>Retrieves a list of Transaction objects.</p>
        public func get(parameters: GetParameters) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters.asQuery, id: "GetTreasuryTransactions")
        }

        /// TreasuryTransactionsResourceTransactionList
        public struct GetResponse: Decodable {
            /// Details about each object.
            public var data: [StripeKit.TreasuryTransaction]
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

            public init(data: [StripeKit.TreasuryTransaction], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.TreasuryTransaction].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var created: Created?
            public var endingBefore: String?
            public var expand: [String]?
            public var financialAccount: String
            public var limit: Int?
            public var orderBy: OrderBy?
            public var startingAfter: String?
            public var status: Status?
            /// Status_transition_timestamp_specs
            public var statusTransitions: StatusTransitions?

            public struct Created: Codable {
                /// Range_query_specs
                public var object: Object?
                public var int: Int?

                /// Range_query_specs
                public struct Object: Codable {
                    public var gt: Int?
                    public var gte: Int?
                    public var lt: Int?
                    public var lte: Int?

                    public init(gt: Int? = nil, gte: Int? = nil, lt: Int? = nil, lte: Int? = nil) {
                        self.gt = gt
                        self.gte = gte
                        self.lt = lt
                        self.lte = lte
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(gt, forKey: "gt")
                        encoder.encode(gte, forKey: "gte")
                        encoder.encode(lt, forKey: "lt")
                        encoder.encode(lte, forKey: "lte")
                        return encoder.items
                    }
                }

                public init(object: Object? = nil, int: Int? = nil) {
                    self.object = object
                    self.int = int
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(object, forKey: "object")
                    encoder.encode(int, forKey: "int")
                    return encoder.items
                }
            }

            public enum OrderBy: String, Codable, CaseIterable {
                case created
                case postedAt = "posted_at"
            }

            public enum Status: String, Codable, CaseIterable {
                case `open`
                case posted
                case void
            }

            /// Status_transition_timestamp_specs
            public struct StatusTransitions: Codable {
                public var postedAt: PostedAt?

                public struct PostedAt: Codable {
                    /// Range_query_specs
                    public var object: Object?
                    public var int: Int?

                    /// Range_query_specs
                    public struct Object: Codable {
                        public var gt: Int?
                        public var gte: Int?
                        public var lt: Int?
                        public var lte: Int?

                        public init(gt: Int? = nil, gte: Int? = nil, lt: Int? = nil, lte: Int? = nil) {
                            self.gt = gt
                            self.gte = gte
                            self.lt = lt
                            self.lte = lte
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(gt, forKey: "gt")
                            encoder.encode(gte, forKey: "gte")
                            encoder.encode(lt, forKey: "lt")
                            encoder.encode(lte, forKey: "lte")
                            return encoder.items
                        }
                    }

                    public init(object: Object? = nil, int: Int? = nil) {
                        self.object = object
                        self.int = int
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(object, forKey: "object")
                        encoder.encode(int, forKey: "int")
                        return encoder.items
                    }
                }

                public init(postedAt: PostedAt? = nil) {
                    self.postedAt = postedAt
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(postedAt, forKey: "posted_at")
                    return encoder.items
                }
            }

            public init(created: Created? = nil, endingBefore: String? = nil, expand: [String]? = nil, financialAccount: String, limit: Int? = nil, orderBy: OrderBy? = nil, startingAfter: String? = nil, status: Status? = nil, statusTransitions: StatusTransitions? = nil) {
                self.created = created
                self.endingBefore = endingBefore
                self.expand = expand
                self.financialAccount = financialAccount
                self.limit = limit
                self.orderBy = orderBy
                self.startingAfter = startingAfter
                self.status = status
                self.statusTransitions = statusTransitions
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(created, forKey: "created", isDeepObject: true)
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(financialAccount, forKey: "financial_account")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(orderBy, forKey: "order_by")
                encoder.encode(startingAfter, forKey: "starting_after")
                encoder.encode(status, forKey: "status")
                encoder.encode(statusTransitions, forKey: "status_transitions", isDeepObject: true)
                return encoder.items
            }
        }
    }
}