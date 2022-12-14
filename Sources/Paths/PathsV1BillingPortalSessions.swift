// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.BillingPortal {
    public var sessions: Sessions {
        Sessions(path: path + "/sessions")
    }

    public struct Sessions {
        /// Path: `/v1/billing_portal/sessions`
        public let path: String

        /// <p>Creates a session of the customer portal.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.BillingPortalSession> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostBillingPortalSessions")
        }

        public struct PostRequest: Encodable {
            /// The ID of an existing [configuration](https://stripe.com/docs/api/customer_portal/configuration) to use for this session, describing its functionality and features. If not specified, the session uses the default configuration.
            public var configuration: String?
            /// The ID of an existing customer.
            public var customer: String
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
            public var locale: Locale?
            /// The `on_behalf_of` account to use for this session. When specified, only subscriptions and invoices with this `on_behalf_of` account appear in the portal. For more information, see the [docs](https://stripe.com/docs/connect/charges-transfers#on-behalf-of). Use the [Accounts API](https://stripe.com/docs/api/accounts/object#account_object-settings-branding) to modify the `on_behalf_of` account's branding settings, which the portal displays.
            public var onBehalfOf: String?
            /// The default URL to redirect customers to when they click on the portal's link to return to your website.
            public var returnURL: String?

            /// The IETF language tag of the locale Customer Portal is displayed in. If blank or auto, the customer’s `preferred_locales` or browser’s locale is used.
            public enum Locale: String, Codable, CaseIterable {
                case auto
                case bg
                case cs
                case da
                case de
                case el
                case en
                case enAU = "en-AU"
                case enCA = "en-CA"
                case enGB = "en-GB"
                case enIE = "en-IE"
                case enIN = "en-IN"
                case enNZ = "en-NZ"
                case enSG = "en-SG"
                case es
                case es419 = "es-419"
                case et
                case fi
                case fil
                case fr
                case frCA = "fr-CA"
                case hr
                case hu
                case id
                case it
                case ja
                case ko
                case lt
                case lv
                case ms
                case mt
                case nb
                case nl
                case pl
                case pt
                case ptBR = "pt-BR"
                case ro
                case ru
                case sk
                case sl
                case sv
                case th
                case tr
                case vi
                case zh
                case zhHK = "zh-HK"
                case zhTW = "zh-TW"
            }

            public init(configuration: String? = nil, customer: String, expand: [String]? = nil, locale: Locale? = nil, onBehalfOf: String? = nil, returnURL: String? = nil) {
                self.configuration = configuration
                self.customer = customer
                self.expand = expand
                self.locale = locale
                self.onBehalfOf = onBehalfOf
                self.returnURL = returnURL
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(configuration, forKey: "configuration")
                encoder.encode(customer, forKey: "customer")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(locale, forKey: "locale")
                encoder.encode(onBehalfOf, forKey: "on_behalf_of")
                encoder.encode(returnURL, forKey: "return_url")
                return encoder.items
            }
        }
    }
}
