// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Customers.WithCustomer.Cards {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/customers/{customer}/cards/{id}`
        public let path: String

        /// <p>You can always see the 10 most recent cards directly on a customer; this method lets you retrieve details about a specific card stored on the customer.</p>
        @available(*, deprecated, message: "Deprecated")
        public func get(expand: [String]? = nil) -> Request<StripeKit.Card> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetCustomersCustomerCardsId")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Update a specified source for a given customer.</p>
        public func post(_ body: PostRequest? = nil) -> Request<PostResponse> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostCustomersCustomerCardsId")
        }

        public struct PostResponse: Decodable {
            /// You can store multiple cards on a customer in order to charge the customer
            /// later. You can also store multiple debit cards on a recipient in order to
            /// transfer to those cards later.
            /// 
            /// Related guide: [Card Payments with Sources](https://stripe.com/docs/sources/cards).
            public var card: StripeKit.Card?
            /// These bank accounts are payment methods on `Customer` objects.
            /// 
            /// On the other hand [External Accounts](https://stripe.com/docs/api#external_accounts) are transfer
            /// destinations on `Account` objects for [Custom accounts](https://stripe.com/docs/connect/custom-accounts).
            /// They can be bank accounts or debit cards as well, and are documented in the links above.
            /// 
            /// Related guide: [Bank Debits and Transfers](https://stripe.com/docs/payments/bank-debits-transfers).
            public var bankAccount: StripeKit.BankAccount?
            /// `Source` objects allow you to accept a variety of payment methods. They
            /// represent a customer's payment instrument, and can be used with the Stripe API
            /// just like a `Card` object: once chargeable, they can be charged, or can be
            /// attached to customers.
            /// 
            /// Related guides: [Sources API](https://stripe.com/docs/sources) and [Sources & Customers](https://stripe.com/docs/sources/customers).
            public var source: StripeKit.Source?

            public init(card: StripeKit.Card? = nil, bankAccount: StripeKit.BankAccount? = nil, source: StripeKit.Source? = nil) {
                self.card = card
                self.bankAccount = bankAccount
                self.source = source
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                self.card = try? container.decode(StripeKit.Card.self)
                self.bankAccount = try? container.decode(StripeKit.BankAccount.self)
                self.source = try? container.decode(StripeKit.Source.self)
            }
        }

        public struct PostRequest: Encodable {
            /// The name of the person or business that owns the bank account.
            public var accountHolderName: String?
            /// The type of entity that holds the account. This can be either `individual` or `company`.
            public var accountHolderType: AccountHolderType?
            /// City/District/Suburb/Town/Village.
            public var addressCity: String?
            /// Billing address country, if provided when creating card.
            public var addressCountry: String?
            /// Address line 1 (Street address/PO Box/Company name).
            public var addressLine1: String?
            /// Address line 2 (Apartment/Suite/Unit/Building).
            public var addressLine2: String?
            /// State/County/Province/Region.
            public var addressState: String?
            /// ZIP or postal code.
            public var addressZip: String?
            /// Two digit number representing the card’s expiration month.
            public var expMonth: String?
            /// Four digit number representing the card’s expiration year.
            public var expYear: String?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// Cardholder name.
            public var name: String?
            public var owner: Owner?

            /// The type of entity that holds the account. This can be either `individual` or `company`.
            public enum AccountHolderType: String, Codable, CaseIterable {
                case company
                case individual
            }

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

            public struct Owner: Encodable {
                /// Source_address
                public var address: Address?
                public var email: String?
                public var name: String?
                public var phone: String?

                /// Source_address
                public struct Address: Encodable {
                    public var city: String?
                    public var country: String?
                    public var line1: String?
                    public var line2: String?
                    public var postalCode: String?
                    public var state: String?

                    public init(city: String? = nil, country: String? = nil, line1: String? = nil, line2: String? = nil, postalCode: String? = nil, state: String? = nil) {
                        self.city = city
                        self.country = country
                        self.line1 = line1
                        self.line2 = line2
                        self.postalCode = postalCode
                        self.state = state
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(city, forKey: "city")
                        encoder.encode(country, forKey: "country")
                        encoder.encode(line1, forKey: "line1")
                        encoder.encode(line2, forKey: "line2")
                        encoder.encode(postalCode, forKey: "postal_code")
                        encoder.encode(state, forKey: "state")
                        return encoder.items
                    }
                }

                public init(address: Address? = nil, email: String? = nil, name: String? = nil, phone: String? = nil) {
                    self.address = address
                    self.email = email
                    self.name = name
                    self.phone = phone
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(address, forKey: "address")
                    encoder.encode(email, forKey: "email")
                    encoder.encode(name, forKey: "name")
                    encoder.encode(phone, forKey: "phone")
                    return encoder.items
                }
            }

            public init(accountHolderName: String? = nil, accountHolderType: AccountHolderType? = nil, addressCity: String? = nil, addressCountry: String? = nil, addressLine1: String? = nil, addressLine2: String? = nil, addressState: String? = nil, addressZip: String? = nil, expMonth: String? = nil, expYear: String? = nil, expand: [String]? = nil, metadata: Metadata? = nil, name: String? = nil, owner: Owner? = nil) {
                self.accountHolderName = accountHolderName
                self.accountHolderType = accountHolderType
                self.addressCity = addressCity
                self.addressCountry = addressCountry
                self.addressLine1 = addressLine1
                self.addressLine2 = addressLine2
                self.addressState = addressState
                self.addressZip = addressZip
                self.expMonth = expMonth
                self.expYear = expYear
                self.expand = expand
                self.metadata = metadata
                self.name = name
                self.owner = owner
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(accountHolderName, forKey: "account_holder_name")
                encoder.encode(accountHolderType, forKey: "account_holder_type")
                encoder.encode(addressCity, forKey: "address_city")
                encoder.encode(addressCountry, forKey: "address_country")
                encoder.encode(addressLine1, forKey: "address_line1")
                encoder.encode(addressLine2, forKey: "address_line2")
                encoder.encode(addressState, forKey: "address_state")
                encoder.encode(addressZip, forKey: "address_zip")
                encoder.encode(expMonth, forKey: "exp_month")
                encoder.encode(expYear, forKey: "exp_year")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(name, forKey: "name")
                encoder.encode(owner, forKey: "owner")
                return encoder.items
            }
        }

        /// <p>Delete a specified source for a given customer.</p>
        public func delete(_ body: DeleteRequest? = nil) -> Request<DeleteResponse> {
            Request(method: "DELETE", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "DeleteCustomersCustomerCardsId")
        }

        public struct DeleteResponse: Decodable {
            /// Polymorphic
            public var paymentSource: StripeKit.PaymentSource?
            /// Polymorphic
            public var deletedPaymentSource: StripeKit.DeletedPaymentSource?

            public init(paymentSource: StripeKit.PaymentSource? = nil, deletedPaymentSource: StripeKit.DeletedPaymentSource? = nil) {
                self.paymentSource = paymentSource
                self.deletedPaymentSource = deletedPaymentSource
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                self.paymentSource = try? container.decode(StripeKit.PaymentSource.self)
                self.deletedPaymentSource = try? container.decode(StripeKit.DeletedPaymentSource.self)
            }
        }

        public struct DeleteRequest: Encodable {
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?

            public init(expand: [String]? = nil) {
                self.expand = expand
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(expand, forKey: "expand")
                return encoder.items
            }
        }
    }
}
