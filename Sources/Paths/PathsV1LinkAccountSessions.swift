// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var linkAccountSessions: LinkAccountSessions {
        LinkAccountSessions(path: "/v1/link_account_sessions")
    }

    public struct LinkAccountSessions {
        /// Path: `/v1/link_account_sessions`
        public let path: String

        /// <p>To launch the Financial Connections authorization flow, create a <code>Session</code>. The session’s <code>client_secret</code> can be used to launch the flow using Stripe.js.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.FinancialConnectionsSession> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostLinkAccountSessions")
        }

        public struct PostRequest: Encodable {
            /// Accountholder_params
            ///
            /// The account holder to link accounts for.
            public var accountHolder: AccountHolder
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Filters_params
            ///
            /// Filters to restrict the kinds of accounts to collect.
            public var filters: Filters?
            /// List of data features that you would like to request access to.
            /// 
            /// Possible values are `balances`, `transactions`, `ownership`, and `payment_method`.
            public var permissions: [Permission]
            /// For webview integrations only. Upon completing OAuth login in the native browser, the user will be redirected to this URL to return to your app.
            public var returnURL: String?

            /// Accountholder_params
            ///
            /// The account holder to link accounts for.
            public struct AccountHolder: Encodable {
                public var account: String?
                public var customer: String?
                public var type: `Type`

                public enum `Type`: String, Codable, CaseIterable {
                    case account
                    case customer
                }

                public init(account: String? = nil, customer: String? = nil, type: `Type`) {
                    self.account = account
                    self.customer = customer
                    self.type = type
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(account, forKey: "account")
                    encoder.encode(customer, forKey: "customer")
                    encoder.encode(type, forKey: "type")
                    return encoder.items
                }
            }

            /// Filters_params
            ///
            /// Filters to restrict the kinds of accounts to collect.
            public struct Filters: Encodable {
                public var countries: [String]

                public init(countries: [String]) {
                    self.countries = countries
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(countries, forKey: "countries")
                    return encoder.items
                }
            }

            public enum Permission: String, Codable, CaseIterable {
                case balances
                case ownership
                case paymentMethod = "payment_method"
                case transactions
            }

            public init(accountHolder: AccountHolder, expand: [String]? = nil, filters: Filters? = nil, permissions: [Permission], returnURL: String? = nil) {
                self.accountHolder = accountHolder
                self.expand = expand
                self.filters = filters
                self.permissions = permissions
                self.returnURL = returnURL
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(accountHolder, forKey: "account_holder")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(filters, forKey: "filters")
                encoder.encode(permissions, forKey: "permissions")
                encoder.encode(returnURL, forKey: "return_url")
                return encoder.items
            }
        }
    }
}
