// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var creditNotes: CreditNotes {
        CreditNotes(path: "/v1/credit_notes")
    }

    public struct CreditNotes {
        /// Path: `/v1/credit_notes`
        public let path: String

        /// <p>Returns a list of credit notes.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetCreditNotes")
        }

        /// CreditNotesList
        public struct GetResponse: Decodable {
            public var data: [StripeKit.CreditNote]
            /// True if this list has another page of items after this one that can be fetched.
            public var hasMore: Bool
            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public var object: Object
            /// The URL where this list can be accessed.
            public var url: String

            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public enum Object: String, Codable, CaseIterable {
                case list
            }

            public init(data: [StripeKit.CreditNote], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.CreditNote].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var customer: String?
            public var endingBefore: String?
            public var expand: [String]?
            public var invoice: String?
            public var limit: Int?
            public var startingAfter: String?

            public init(customer: String? = nil, endingBefore: String? = nil, expand: [String]? = nil, invoice: String? = nil, limit: Int? = nil, startingAfter: String? = nil) {
                self.customer = customer
                self.endingBefore = endingBefore
                self.expand = expand
                self.invoice = invoice
                self.limit = limit
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(customer, forKey: "customer")
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(invoice, forKey: "invoice")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }

        /// <p>Issue a credit note to adjust the amount of a finalized invoice. For a <code>status=open</code> invoice, a credit note reduces
        /// its <code>amount_due</code>. For a <code>status=paid</code> invoice, a credit note does not affect its <code>amount_due</code>. Instead, it can result
        /// in any combination of the following:</p>
        /// 
        /// <ul>
        /// <li>Refund: create a new refund (using <code>refund_amount</code>) or link an existing refund (using <code>refund</code>).</li>
        /// <li>Customer balance credit: credit the customer’s balance (using <code>credit_amount</code>) which will be automatically applied to their next invoice when it’s finalized.</li>
        /// <li>Outside of Stripe credit: record the amount that is or will be credited outside of Stripe (using <code>out_of_band_amount</code>).</li>
        /// </ul>
        /// 
        /// <p>For post-payment credit notes the sum of the refund, credit and outside of Stripe amounts must equal the credit note total.</p>
        /// 
        /// <p>You may issue multiple credit notes for an invoice. Each credit note will increment the invoice’s <code>pre_payment_credit_notes_amount</code>
        /// or <code>post_payment_credit_notes_amount</code> depending on its <code>status</code> at the time of credit note creation.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.CreditNote> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostCreditNotes")
        }

        public struct PostRequest: Encodable {
            /// The integer amount in cents (or local equivalent) representing the total amount of the credit note.
            public var amount: Int?
            /// The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
            public var creditAmount: Int?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// ID of the invoice.
            public var invoice: String
            /// Line items that make up the credit note.
            public var lines: [Line]?
            /// The credit note's memo appears on the credit note PDF.
            public var memo: String?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: [String: String]?
            /// The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
            public var outOfBandAmount: Int?
            /// Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
            public var reason: Reason?
            /// ID of an existing refund to link this credit note to.
            public var refund: String?
            /// The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
            public var refundAmount: Int?

            /// Credit_note_line_item_params
            public struct Line: Encodable {
                public var amount: Int?
                public var description: String?
                public var invoiceLineItem: String?
                public var quantity: Int?
                public var taxRates: TaxRates?
                public var type: `Type`
                public var unitAmount: Int?
                public var unitAmountDecimal: String?

                public struct TaxRates: Encodable {
                    public var strings: [String]?
                    public var object: Object?

                    public enum Object: String, Codable, CaseIterable {
                        case empty = ""
                    }

                    public init(strings: [String]? = nil, object: Object? = nil) {
                        self.strings = strings
                        self.object = object
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(strings, forKey: "strings")
                        encoder.encode(object, forKey: "object")
                        return encoder.items
                    }
                }

                public enum `Type`: String, Codable, CaseIterable {
                    case customLineItem = "custom_line_item"
                    case invoiceLineItem = "invoice_line_item"
                }

                public init(amount: Int? = nil, description: String? = nil, invoiceLineItem: String? = nil, quantity: Int? = nil, taxRates: TaxRates? = nil, type: `Type`, unitAmount: Int? = nil, unitAmountDecimal: String? = nil) {
                    self.amount = amount
                    self.description = description
                    self.invoiceLineItem = invoiceLineItem
                    self.quantity = quantity
                    self.taxRates = taxRates
                    self.type = type
                    self.unitAmount = unitAmount
                    self.unitAmountDecimal = unitAmountDecimal
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(amount, forKey: "amount")
                    encoder.encode(description, forKey: "description")
                    encoder.encode(invoiceLineItem, forKey: "invoice_line_item")
                    encoder.encode(quantity, forKey: "quantity")
                    encoder.encode(taxRates, forKey: "tax_rates")
                    encoder.encode(type, forKey: "type")
                    encoder.encode(unitAmount, forKey: "unit_amount")
                    encoder.encode(unitAmountDecimal, forKey: "unit_amount_decimal")
                    return encoder.items
                }
            }

            /// Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
            public enum Reason: String, Codable, CaseIterable {
                case duplicate
                case fraudulent
                case orderChange = "order_change"
                case productUnsatisfactory = "product_unsatisfactory"
            }

            public init(amount: Int? = nil, creditAmount: Int? = nil, expand: [String]? = nil, invoice: String, lines: [Line]? = nil, memo: String? = nil, metadata: [String: String]? = nil, outOfBandAmount: Int? = nil, reason: Reason? = nil, refund: String? = nil, refundAmount: Int? = nil) {
                self.amount = amount
                self.creditAmount = creditAmount
                self.expand = expand
                self.invoice = invoice
                self.lines = lines
                self.memo = memo
                self.metadata = metadata
                self.outOfBandAmount = outOfBandAmount
                self.reason = reason
                self.refund = refund
                self.refundAmount = refundAmount
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(amount, forKey: "amount")
                encoder.encode(creditAmount, forKey: "credit_amount")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(invoice, forKey: "invoice")
                encoder.encode(lines, forKey: "lines")
                encoder.encode(memo, forKey: "memo")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(outOfBandAmount, forKey: "out_of_band_amount")
                encoder.encode(reason, forKey: "reason")
                encoder.encode(refund, forKey: "refund")
                encoder.encode(refundAmount, forKey: "refund_amount")
                return encoder.items
            }
        }
    }
}
