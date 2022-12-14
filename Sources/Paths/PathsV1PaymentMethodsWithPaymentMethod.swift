// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.PaymentMethods {
    public func paymentMethod(_ paymentMethod: String) -> WithPaymentMethod {
        WithPaymentMethod(path: "\(path)/\(paymentMethod)")
    }

    public struct WithPaymentMethod {
        /// Path: `/v1/payment_methods/{payment_method}`
        public let path: String

        /// <p>Retrieves a PaymentMethod object attached to the StripeAccount. To retrieve a payment method attached to a Customer, you should use <a href="/docs/api/payment_methods/customer">Retrieve a Customer’s PaymentMethods</a></p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.PaymentMethod> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetPaymentMethodsPaymentMethod")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Updates a PaymentMethod object. A PaymentMethod must be attached a customer to be updated.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.PaymentMethod> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostPaymentMethodsPaymentMethod")
        }

        public struct PostRequest: Encodable {
            /// Billing_details_inner_params
            ///
            /// Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
            public var billingDetails: BillingDetails?
            /// Update_api_param
            ///
            /// If this is a `card` PaymentMethod, this hash contains the user's card details.
            public var card: Card?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Param
            ///
            /// If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
            public var link: [String: AnyJSON]?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// Update_param
            ///
            /// If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
            public var usBankAccount: UsBankAccount?

            /// Billing_details_inner_params
            ///
            /// Billing information associated with the PaymentMethod that may be used or required by particular types of payment methods.
            public struct BillingDetails: Encodable {
                public var address: Address?
                public var email: Email?
                public var name: String?
                public var phone: String?

                public struct Address: Encodable {
                    /// Billing_details_address
                    public var a: A?
                    public var b: B?

                    /// Billing_details_address
                    public struct A: Encodable {
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

                    public enum B: String, Codable, CaseIterable {
                        case empty = ""
                    }

                    public init(a: A? = nil, b: B? = nil) {
                        self.a = a
                        self.b = b
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(a, forKey: "a")
                        encoder.encode(b, forKey: "b")
                        return encoder.items
                    }
                }

                public struct Email: Encodable {
                    public var string: String?
                    public var object: Object?

                    public enum Object: String, Codable, CaseIterable {
                        case empty = ""
                    }

                    public init(string: String? = nil, object: Object? = nil) {
                        self.string = string
                        self.object = object
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(string, forKey: "string")
                        encoder.encode(object, forKey: "object")
                        return encoder.items
                    }
                }

                public init(address: Address? = nil, email: Email? = nil, name: String? = nil, phone: String? = nil) {
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

            /// Update_api_param
            ///
            /// If this is a `card` PaymentMethod, this hash contains the user's card details.
            public struct Card: Encodable {
                public var expMonth: Int?
                public var expYear: Int?

                public init(expMonth: Int? = nil, expYear: Int? = nil) {
                    self.expMonth = expMonth
                    self.expYear = expYear
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(expMonth, forKey: "exp_month")
                    encoder.encode(expYear, forKey: "exp_year")
                    return encoder.items
                }
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

            /// Update_param
            ///
            /// If this is an `us_bank_account` PaymentMethod, this hash contains details about the US bank account payment method.
            public struct UsBankAccount: Encodable {
                public var accountHolderType: AccountHolderType?

                public enum AccountHolderType: String, Codable, CaseIterable {
                    case company
                    case individual
                }

                public init(accountHolderType: AccountHolderType? = nil) {
                    self.accountHolderType = accountHolderType
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(accountHolderType, forKey: "account_holder_type")
                    return encoder.items
                }
            }

            public init(billingDetails: BillingDetails? = nil, card: Card? = nil, expand: [String]? = nil, link: [String: AnyJSON]? = nil, metadata: Metadata? = nil, usBankAccount: UsBankAccount? = nil) {
                self.billingDetails = billingDetails
                self.card = card
                self.expand = expand
                self.link = link
                self.metadata = metadata
                self.usBankAccount = usBankAccount
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(billingDetails, forKey: "billing_details")
                encoder.encode(card, forKey: "card")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(link, forKey: "link")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(usBankAccount, forKey: "us_bank_account")
                return encoder.items
            }
        }
    }
}
