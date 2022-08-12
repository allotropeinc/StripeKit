// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CreditNoteTaxAmount: Codable {
    /// The amount, in %s, of the tax.
    public var amount: Int
    /// Whether this tax amount is inclusive or exclusive.
    public var isInclusive: Bool
    /// The tax rate that was applied to get this tax amount.
    public var taxRate: TaxRate

    /// The tax rate that was applied to get this tax amount.
    public final class TaxRate: Codable {
        public let string: String?
        /// Tax rates can be applied to [invoices](https://stripe.com/docs/billing/invoices/tax-rates), [subscriptions](https://stripe.com/docs/billing/subscriptions/taxes) and [Checkout Sessions](https://stripe.com/docs/payments/checkout/set-up-a-subscription#tax-rates) to collect tax.
        /// 
        /// Related guide: [Tax Rates](https://stripe.com/docs/billing/taxes/tax-rates).
        public let taxRate: StripeKit.TaxRate?

        public init(string: String? = nil, taxRate: StripeKit.TaxRate? = nil) {
            self.string = string
            self.taxRate = taxRate
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.taxRate = try? container.decode(StripeKit.TaxRate.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = taxRate { try container.encode(value) }
        }
    }

    public init(amount: Int, isInclusive: Bool, taxRate: TaxRate) {
        self.amount = amount
        self.isInclusive = isInclusive
        self.taxRate = taxRate
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.isInclusive = try values.decode(Bool.self, forKey: "inclusive")
        self.taxRate = try values.decode(TaxRate.self, forKey: "tax_rate")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encode(isInclusive, forKey: "inclusive")
        try values.encode(taxRate, forKey: "tax_rate")
    }
}