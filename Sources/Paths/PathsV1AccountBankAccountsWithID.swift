// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Account.BankAccounts {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/account/bank_accounts/{id}`
        public let path: String

        /// <p>Retrieve a specified external account for a given account.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.ExternalAccount> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetAccountBankAccountsId")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Updates the metadata, account holder name, account holder type of a bank account belonging to a <a href="/docs/connect/custom-accounts">Custom account</a>, and optionally sets it as the default for its currency. Other bank account details are not editable by design.</p>
        /// 
        /// <p>You can re-enable a disabled bank account by performing an update call without providing any arguments or changes.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.ExternalAccount> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostAccountBankAccountsId")
        }

        public struct PostRequest: Encodable {
            /// The name of the person or business that owns the bank account.
            public var accountHolderName: String?
            /// The type of entity that holds the account. This can be either `individual` or `company`.
            public var accountHolderType: AccountHolderType?
            /// The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
            public var accountType: AccountType?
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
            /// When set to true, this becomes the default external account for its currency.
            public var isDefaultForCurrency: Bool?
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

            /// The type of entity that holds the account. This can be either `individual` or `company`.
            public enum AccountHolderType: String, Codable, CaseIterable {
                case empty = ""
                case company
                case individual
            }

            /// The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
            public enum AccountType: String, Codable, CaseIterable {
                case checking
                case futsu
                case savings
                case toza
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

            public init(accountHolderName: String? = nil, accountHolderType: AccountHolderType? = nil, accountType: AccountType? = nil, addressCity: String? = nil, addressCountry: String? = nil, addressLine1: String? = nil, addressLine2: String? = nil, addressState: String? = nil, addressZip: String? = nil, isDefaultForCurrency: Bool? = nil, expMonth: String? = nil, expYear: String? = nil, expand: [String]? = nil, metadata: Metadata? = nil, name: String? = nil) {
                self.accountHolderName = accountHolderName
                self.accountHolderType = accountHolderType
                self.accountType = accountType
                self.addressCity = addressCity
                self.addressCountry = addressCountry
                self.addressLine1 = addressLine1
                self.addressLine2 = addressLine2
                self.addressState = addressState
                self.addressZip = addressZip
                self.isDefaultForCurrency = isDefaultForCurrency
                self.expMonth = expMonth
                self.expYear = expYear
                self.expand = expand
                self.metadata = metadata
                self.name = name
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(accountHolderName, forKey: "account_holder_name")
                encoder.encode(accountHolderType, forKey: "account_holder_type")
                encoder.encode(accountType, forKey: "account_type")
                encoder.encode(addressCity, forKey: "address_city")
                encoder.encode(addressCountry, forKey: "address_country")
                encoder.encode(addressLine1, forKey: "address_line1")
                encoder.encode(addressLine2, forKey: "address_line2")
                encoder.encode(addressState, forKey: "address_state")
                encoder.encode(addressZip, forKey: "address_zip")
                encoder.encode(isDefaultForCurrency, forKey: "default_for_currency")
                encoder.encode(expMonth, forKey: "exp_month")
                encoder.encode(expYear, forKey: "exp_year")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(name, forKey: "name")
                return encoder.items
            }
        }

        /// <p>Delete a specified external account for a given account.</p>
        public var delete: Request<StripeKit.DeletedExternalAccount> {
            Request(method: "DELETE", url: path, id: "DeleteAccountBankAccountsId")
        }
    }
}