// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.CreditNotes {
    public var preview: Preview {
        Preview(path: path + "/preview")
    }

    public struct Preview {
        /// Path: `/v1/credit_notes/preview`
        public let path: String

        /// <p>Get a preview of a credit note without creating it.</p>
        public func get(parameters: GetParameters) -> Request<StripeKit.CreditNote> {
            Request(method: "GET", url: path, query: parameters.asQuery, id: "GetCreditNotesPreview")
        }

        public struct GetParameters {
            public var amount: Int?
            public var creditAmount: Int?
            public var expand: [String]?
            public var invoice: String
            public var lines: [Lines]?
            public var memo: String?
            public var metadata: Metadata?
            public var outOfBandAmount: Int?
            public var reason: Reason?
            public var refund: String?
            public var refundAmount: Int?

            /// Credit_note_line_item_params
            public struct Lines: Codable {
                public var amount: Int?
                public var description: String?
                public var invoiceLineItem: String?
                public var quantity: Int?
                public var taxRates: TaxRates?
                public var type: `Type`
                public var unitAmount: Int?
                public var unitAmountDecimal: String?

                public struct TaxRates: Codable {
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

            public typealias Metadata = [String: String]

            public enum Reason: String, Codable, CaseIterable {
                case duplicate
                case fraudulent
                case orderChange = "order_change"
                case productUnsatisfactory = "product_unsatisfactory"
            }

            public init(amount: Int? = nil, creditAmount: Int? = nil, expand: [String]? = nil, invoice: String, lines: [Lines]? = nil, memo: String? = nil, metadata: Metadata? = nil, outOfBandAmount: Int? = nil, reason: Reason? = nil, refund: String? = nil, refundAmount: Int? = nil) {
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
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(invoice, forKey: "invoice")
                encoder.encode(lines, forKey: "lines", isDeepObject: true)
                encoder.encode(memo, forKey: "memo")
                encoder.encode(metadata, forKey: "metadata", isDeepObject: true)
                encoder.encode(outOfBandAmount, forKey: "out_of_band_amount")
                encoder.encode(reason, forKey: "reason")
                encoder.encode(refund, forKey: "refund")
                encoder.encode(refundAmount, forKey: "refund_amount")
                return encoder.items
            }
        }
    }
}
