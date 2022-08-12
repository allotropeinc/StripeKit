// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Customers.WithCustomer {
    public var sources: Sources {
        Sources(path: path + "/sources")
    }

    public struct Sources {
        /// Path: `/v1/customers/{customer}/sources`
        public let path: String

        /// <p>List sources for a specified customer.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetCustomersCustomerSources")
        }

        /// ApmsSourcesSourceList
        public struct GetResponse: Decodable {
            /// Details about each object.
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
                /// `Source` objects allow you to accept a variety of payment methods. They
                /// represent a customer's payment instrument, and can be used with the Stripe API
                /// just like a `Card` object: once chargeable, they can be charged, or can be
                /// attached to customers.
                /// 
                /// Related guides: [Sources API](https://stripe.com/docs/sources) and [Sources & Customers](https://stripe.com/docs/sources/customers).
                public var source: StripeKit.Source?

                public init(bankAccount: StripeKit.BankAccount? = nil, card: StripeKit.Card? = nil, source: StripeKit.Source? = nil) {
                    self.bankAccount = bankAccount
                    self.card = card
                    self.source = source
                }

                public init(from decoder: Decoder) throws {
                    let container = try decoder.singleValueContainer()
                    self.bankAccount = try? container.decode(StripeKit.BankAccount.self)
                    self.card = try? container.decode(StripeKit.Card.self)
                    self.source = try? container.decode(StripeKit.Source.self)
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
            public var object: String?
            public var startingAfter: String?

            public init(endingBefore: String? = nil, expand: [String]? = nil, limit: Int? = nil, object: String? = nil, startingAfter: String? = nil) {
                self.endingBefore = endingBefore
                self.expand = expand
                self.limit = limit
                self.object = object
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(object, forKey: "object")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }

        /// <p>When you create a new credit card, you must specify a customer or recipient on which to create it.</p>
        /// 
        /// <p>If the card’s owner has no default card, then the new card will become the default.
        /// However, if the owner already has a default, then it will not change.
        /// To change the default, you should <a href="/docs/api#update_customer">update the customer</a> to have a new <code>default_source</code>.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.PaymentSource> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostCustomersCustomerSources")
        }

        public struct PostRequest: Encodable {
            /// A token returned by [Stripe.js](https://stripe.com/docs/js) representing the user’s Alipay account details.
            public var alipayAccount: String?
            /// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
            public var bankAccount: BankAccount?
            /// A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
            public var card: Card?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: [String: String]?
            /// Please refer to full [documentation](https://stripe.com/docs/api) instead.
            public var source: String?

            /// Either a token, like the ones returned by [Stripe.js](https://stripe.com/docs/js), or a dictionary containing a user's bank account details.
            public struct BankAccount: Encodable {
                /// Customer_payment_source_bank_account
                public var object: Object?
                public var string: String?

                /// Customer_payment_source_bank_account
                public struct Object: Encodable {
                    public var accountHolderName: String?
                    public var accountHolderType: AccountHolderType?
                    public var accountNumber: String
                    public var country: String
                    public var currency: String?
                    public var object: Object?
                    public var routingNumber: String?

                    public enum AccountHolderType: String, Codable, CaseIterable {
                        case company
                        case individual
                    }

                    public enum Object: String, Codable, CaseIterable {
                        case bankAccount = "bank_account"
                    }

                    public init(accountHolderName: String? = nil, accountHolderType: AccountHolderType? = nil, accountNumber: String, country: String, currency: String? = nil, object: Object? = nil, routingNumber: String? = nil) {
                        self.accountHolderName = accountHolderName
                        self.accountHolderType = accountHolderType
                        self.accountNumber = accountNumber
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

            /// A token, like the ones returned by [Stripe.js](https://stripe.com/docs/js).
            public struct Card: Encodable {
                /// Customer_payment_source_card
                public var object: Object?
                public var string: String?

                /// Customer_payment_source_card
                public struct Object: Encodable {
                    public var addressCity: String?
                    public var addressCountry: String?
                    public var addressLine1: String?
                    public var addressLine2: String?
                    public var addressState: String?
                    public var addressZip: String?
                    public var cvc: String?
                    public var expMonth: Int
                    public var expYear: Int
                    public var metadata: [String: String]?
                    public var name: String?
                    public var number: String
                    public var object: Object?

                    public enum Object: String, Codable, CaseIterable {
                        case card
                    }

                    public init(addressCity: String? = nil, addressCountry: String? = nil, addressLine1: String? = nil, addressLine2: String? = nil, addressState: String? = nil, addressZip: String? = nil, cvc: String? = nil, expMonth: Int, expYear: Int, metadata: [String: String]? = nil, name: String? = nil, number: String, object: Object? = nil) {
                        self.addressCity = addressCity
                        self.addressCountry = addressCountry
                        self.addressLine1 = addressLine1
                        self.addressLine2 = addressLine2
                        self.addressState = addressState
                        self.addressZip = addressZip
                        self.cvc = cvc
                        self.expMonth = expMonth
                        self.expYear = expYear
                        self.metadata = metadata
                        self.name = name
                        self.number = number
                        self.object = object
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(addressCity, forKey: "address_city")
                        encoder.encode(addressCountry, forKey: "address_country")
                        encoder.encode(addressLine1, forKey: "address_line1")
                        encoder.encode(addressLine2, forKey: "address_line2")
                        encoder.encode(addressState, forKey: "address_state")
                        encoder.encode(addressZip, forKey: "address_zip")
                        encoder.encode(cvc, forKey: "cvc")
                        encoder.encode(expMonth, forKey: "exp_month")
                        encoder.encode(expYear, forKey: "exp_year")
                        encoder.encode(metadata, forKey: "metadata")
                        encoder.encode(name, forKey: "name")
                        encoder.encode(number, forKey: "number")
                        encoder.encode(object, forKey: "object")
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

            public init(alipayAccount: String? = nil, bankAccount: BankAccount? = nil, card: Card? = nil, expand: [String]? = nil, metadata: [String: String]? = nil, source: String? = nil) {
                self.alipayAccount = alipayAccount
                self.bankAccount = bankAccount
                self.card = card
                self.expand = expand
                self.metadata = metadata
                self.source = source
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(alipayAccount, forKey: "alipay_account")
                encoder.encode(bankAccount, forKey: "bank_account")
                encoder.encode(card, forKey: "card")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(source, forKey: "source")
                return encoder.items
            }
        }
    }
}
