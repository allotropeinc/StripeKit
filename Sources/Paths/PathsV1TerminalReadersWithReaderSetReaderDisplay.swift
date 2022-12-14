// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Terminal.Readers.WithReader {
    public var setReaderDisplay: SetReaderDisplay {
        SetReaderDisplay(path: path + "/set_reader_display")
    }

    public struct SetReaderDisplay {
        /// Path: `/v1/terminal/readers/{reader}/set_reader_display`
        public let path: String

        /// <p>Sets reader display to show cart details.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.TerminalReader> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostTerminalReadersReaderSetReaderDisplay")
        }

        public struct PostRequest: Encodable {
            /// Cart
            public var cart: Cart?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Type
            public var type: `Type`

            /// Cart
            public struct Cart: Encodable {
                public var currency: String
                public var lineItems: [LineItem]
                public var tax: Int?
                public var total: Int

                /// Line_item
                public struct LineItem: Encodable {
                    public var amount: Int
                    public var description: String
                    public var quantity: Int

                    public init(amount: Int, description: String, quantity: Int) {
                        self.amount = amount
                        self.description = description
                        self.quantity = quantity
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(amount, forKey: "amount")
                        encoder.encode(description, forKey: "description")
                        encoder.encode(quantity, forKey: "quantity")
                        return encoder.items
                    }
                }

                public init(currency: String, lineItems: [LineItem], tax: Int? = nil, total: Int) {
                    self.currency = currency
                    self.lineItems = lineItems
                    self.tax = tax
                    self.total = total
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(currency, forKey: "currency")
                    encoder.encode(lineItems, forKey: "line_items")
                    encoder.encode(tax, forKey: "tax")
                    encoder.encode(total, forKey: "total")
                    return encoder.items
                }
            }

            /// Type
            public enum `Type`: String, Codable, CaseIterable {
                case cart
            }

            public init(cart: Cart? = nil, expand: [String]? = nil, type: `Type`) {
                self.cart = cart
                self.expand = expand
                self.type = type
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(cart, forKey: "cart")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(type, forKey: "type")
                return encoder.items
            }
        }
    }
}
