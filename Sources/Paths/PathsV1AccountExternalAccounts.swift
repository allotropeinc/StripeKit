// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Account {
    public var externalAccounts: ExternalAccounts {
        ExternalAccounts(path: path + "/external_accounts")
    }

    public struct ExternalAccounts {
        /// Path: `/v1/account/external_accounts`
        public let path: String

        /// <p>List external accounts for an account.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetAccountExternalAccounts")
        }

        /// ExternalAccountList
        public struct GetResponse: Decodable {
            /// The list contains all external accounts that have been attached to the Stripe account. These may be bank accounts or cards.
            public var data: [Datum]
            /// True if this list has another page of items after this one that can be fetched.
            public var hasMore: Bool
            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public var object: Object
            /// The URL where this list can be accessed.
            public var url: String

            /// Polymorphic
            public struct Datum: Decodable {
                /// These bank accounts are payment methods on `Customer` objects.
                /// 
                /// On the other hand [External Accounts](https://stripe.com/docs/api#external_accounts) are transfer
                /// destinations on `Account` objects for [Custom accounts](https://stripe.com/docs/connect/custom-accounts).
                /// They can be bank accounts or debit cards as well, and are documented in the links above.
                /// 
                /// Related guide: [Bank Debits and Transfers](https://stripe.com/docs/payments/bank-debits-transfers).
                public var bankAccount: StripeKit.BankAccount?
                /// You can store multiple cards on a customer in order to charge the customer
                /// later. You can also store multiple debit cards on a recipient in order to
                /// transfer to those cards later.
                /// 
                /// Related guide: [Card Payments with Sources](https://stripe.com/docs/sources/cards).
                public var card: StripeKit.Card?

                public init(bankAccount: StripeKit.BankAccount? = nil, card: StripeKit.Card? = nil) {
                    self.bankAccount = bankAccount
                    self.card = card
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.singleValueContainer()
                    self.bankAccount = try? container.decode(StripeKit.BankAccount.self)
                    self.card = try? container.decode(StripeKit.Card.self)
                }
            }

            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public enum Object: String, Codable, CaseIterable {
                case list
            }

            public init(data: [Datum], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([Datum].self, forKey: "data")
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

        /// <p>Create an external account for a given account.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.ExternalAccount> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostAccountExternalAccounts")
        }

        public struct PostRequest: Encodable {
            /// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
            public var bankAccount: BankAccount?
            /// When set to true, or if this is the first external account added in this currency, this account becomes the default external account for its currency.
            public var isDefaultForCurrency: Bool?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Please refer to full [documentation](https://stripe.com/docs/api) instead.
            public var externalAccount: String?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: [String: String]?

            /// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
            public struct BankAccount: Encodable {
                /// External_account_payout_bank_account
                public var object: Object?
                public var string: String?

                /// External_account_payout_bank_account
                public struct Object: Encodable {
                    public var accountHolderName: String?
                    public var accountHolderType: AccountHolderType?
                    public var accountNumber: String
                    public var accountType: AccountType?
                    public var country: String
                    public var currency: String?
                    public var object: Object?
                    public var routingNumber: String?

                    public enum AccountHolderType: String, Codable, CaseIterable {
                        case company
                        case individual
                    }

                    public enum AccountType: String, Codable, CaseIterable {
                        case checking
                        case futsu
                        case savings
                        case toza
                    }

                    public enum Object: String, Codable, CaseIterable {
                        case bankAccount = "bank_account"
                    }

                    public init(accountHolderName: String? = nil, accountHolderType: AccountHolderType? = nil, accountNumber: String, accountType: AccountType? = nil, country: String, currency: String? = nil, object: Object? = nil, routingNumber: String? = nil) {
                        self.accountHolderName = accountHolderName
                        self.accountHolderType = accountHolderType
                        self.accountNumber = accountNumber
                        self.accountType = accountType
                        self.country = country
                        self.currency = currency
                        self.object = object
                        self.routingNumber = routingNumber
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(accountHolderName, forKey: "account_holder_name")
                        encoder.encode(accountHolderType, forKey: "account_holder_type")
                        encoder.encode(accountNumber, forKey: "account_number")
                        encoder.encode(accountType, forKey: "account_type")
                        encoder.encode(country, forKey: "country")
                        encoder.encode(currency, forKey: "currency")
                        encoder.encode(object, forKey: "object")
                        encoder.encode(routingNumber, forKey: "routing_number")
                        return encoder.items
                    }
                }

                public init(object: Object? = nil, string: String? = nil) {
                    self.object = object
                    self.string = string
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(object, forKey: "object")
                    encoder.encode(string, forKey: "string")
                    return encoder.items
                }
            }

            public init(bankAccount: BankAccount? = nil, isDefaultForCurrency: Bool? = nil, expand: [String]? = nil, externalAccount: String? = nil, metadata: [String: String]? = nil) {
                self.bankAccount = bankAccount
                self.isDefaultForCurrency = isDefaultForCurrency
                self.expand = expand
                self.externalAccount = externalAccount
                self.metadata = metadata
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(bankAccount, forKey: "bank_account")
                encoder.encode(isDefaultForCurrency, forKey: "default_for_currency")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(externalAccount, forKey: "external_account")
                encoder.encode(metadata, forKey: "metadata")
                return encoder.items
            }
        }
    }
}
