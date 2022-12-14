// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Customers.WithCustomer {
    public var fundingInstructions: FundingInstructions {
        FundingInstructions(path: path + "/funding_instructions")
    }

    public struct FundingInstructions {
        /// Path: `/v1/customers/{customer}/funding_instructions`
        public let path: String

        /// <p>Retrieve funding instructions for a customer cash balance. If funding instructions do not yet exist for the customer, new
        /// funding instructions will be created. If funding instructions have already been created for a given customer, the same
        /// funding instructions will be retrieved. In other words, we will return the same funding instructions each time.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.FundingInstructions> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostCustomersCustomerFundingInstructions")
        }

        public struct PostRequest: Encodable {
            /// Bank_transfer_params
            ///
            /// Additional parameters for `bank_transfer` funding types
            public var bankTransfer: BankTransfer
            /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            public var currency: String
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// The `funding_type` to get the instructions for.
            public var fundingType: FundingType

            /// Bank_transfer_params
            ///
            /// Additional parameters for `bank_transfer` funding types
            public struct BankTransfer: Encodable {
                /// Eu_bank_account_params
                public var euBankTransfer: EuBankTransfer?
                public var requestedAddressTypes: [RequestedAddressType]?
                public var type: `Type`

                /// Eu_bank_account_params
                public struct EuBankTransfer: Encodable {
                    public var country: String

                    public init(country: String) {
                        self.country = country
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(country, forKey: "country")
                        return encoder.items
                    }
                }

                public enum RequestedAddressType: String, Codable, CaseIterable {
                    case iban
                    case sortCode = "sort_code"
                    case spei
                    case zengin
                }

                public enum `Type`: String, Codable, CaseIterable {
                    case euBankTransfer = "eu_bank_transfer"
                    case gbBankTransfer = "gb_bank_transfer"
                    case jpBankTransfer = "jp_bank_transfer"
                    case mxBankTransfer = "mx_bank_transfer"
                }

                public init(euBankTransfer: EuBankTransfer? = nil, requestedAddressTypes: [RequestedAddressType]? = nil, type: `Type`) {
                    self.euBankTransfer = euBankTransfer
                    self.requestedAddressTypes = requestedAddressTypes
                    self.type = type
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(euBankTransfer, forKey: "eu_bank_transfer")
                    encoder.encode(requestedAddressTypes, forKey: "requested_address_types")
                    encoder.encode(type, forKey: "type")
                    return encoder.items
                }
            }

            /// The `funding_type` to get the instructions for.
            public enum FundingType: String, Codable, CaseIterable {
                case bankTransfer = "bank_transfer"
            }

            public init(bankTransfer: BankTransfer, currency: String, expand: [String]? = nil, fundingType: FundingType) {
                self.bankTransfer = bankTransfer
                self.currency = currency
                self.expand = expand
                self.fundingType = fundingType
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(bankTransfer, forKey: "bank_transfer")
                encoder.encode(currency, forKey: "currency")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(fundingType, forKey: "funding_type")
                return encoder.items
            }
        }
    }
}
