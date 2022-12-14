// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Coupons {
    public func coupon(_ coupon: String) -> WithCoupon {
        WithCoupon(path: "\(path)/\(coupon)")
    }

    public struct WithCoupon {
        /// Path: `/v1/coupons/{coupon}`
        public let path: String

        /// <p>Retrieves the coupon with the given ID.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.Coupon> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetCouponsCoupon")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Updates the metadata of a coupon. Other coupon details (currency, duration, amount_off) are, by design, not editable.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Coupon> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostCouponsCoupon")
        }

        public struct PostRequest: Encodable {
            /// Coupons defined in each available currency option (only supported if the coupon is amount-based). Each key must be a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html) and a [supported currency](https://stripe.com/docs/currencies).
            public var currencyOptions: [String: CurrencyOption]?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// Name of the coupon displayed to customers on, for instance invoices, or receipts. By default the `id` is shown if `name` is not set.
            public var name: String?

            /// Currency_option
            public struct CurrencyOption: Encodable {
                public var amountOff: Int

                public init(amountOff: Int) {
                    self.amountOff = amountOff
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(amountOff, forKey: "amount_off")
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

            public init(currencyOptions: [String: CurrencyOption]? = nil, expand: [String]? = nil, metadata: Metadata? = nil, name: String? = nil) {
                self.currencyOptions = currencyOptions
                self.expand = expand
                self.metadata = metadata
                self.name = name
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(currencyOptions, forKey: "currency_options")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(name, forKey: "name")
                return encoder.items
            }
        }

        /// <p>You can delete coupons via the <a href="https://dashboard.stripe.com/coupons">coupon management</a> page of the Stripe dashboard. However, deleting a coupon does not affect any customers who have already applied the coupon; it means that new customers can???t redeem the coupon. You can also delete coupons via the API.</p>
        public var delete: Request<StripeKit.DeletedCoupon> {
            Request(method: "DELETE", url: path, id: "DeleteCouponsCoupon")
        }
    }
}
