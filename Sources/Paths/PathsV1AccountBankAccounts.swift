// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Account {
    public var bankAccounts: BankAccounts {
        BankAccounts(path: path + "/bank_accounts")
    }

    public struct BankAccounts {
        /// Path: `/v1/account/bank_accounts`
        public let path: String

        /// <p>Create an external account for a given account.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.ExternalAccount> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostAccountBankAccounts")
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