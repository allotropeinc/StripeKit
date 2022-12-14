// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct InvoicesPaymentMethodOptions: Codable {
    /// If paying by `acss_debit`, this sub-hash contains details about the Canadian pre-authorized debit payment method options to pass to the invoice’s PaymentIntent.
    public var acssDebit: InvoicePaymentMethodOptionsAcssDebit?
    /// If paying by `bancontact`, this sub-hash contains details about the Bancontact payment method options to pass to the invoice’s PaymentIntent.
    public var bancontact: InvoicePaymentMethodOptionsBancontact?
    /// If paying by `card`, this sub-hash contains details about the Card payment method options to pass to the invoice’s PaymentIntent.
    public var card: InvoicePaymentMethodOptionsCard?
    /// If paying by `customer_balance`, this sub-hash contains details about the Bank transfer payment method options to pass to the invoice’s PaymentIntent.
    public var customerBalance: InvoicePaymentMethodOptionsCustomerBalance?
    /// If paying by `konbini`, this sub-hash contains details about the Konbini payment method options to pass to the invoice’s PaymentIntent.
    public var konbini: [String: AnyJSON]?
    /// If paying by `us_bank_account`, this sub-hash contains details about the ACH direct debit payment method options to pass to the invoice’s PaymentIntent.
    public var usBankAccount: InvoicePaymentMethodOptionsUsBankAccount?

    public init(acssDebit: InvoicePaymentMethodOptionsAcssDebit? = nil, bancontact: InvoicePaymentMethodOptionsBancontact? = nil, card: InvoicePaymentMethodOptionsCard? = nil, customerBalance: InvoicePaymentMethodOptionsCustomerBalance? = nil, konbini: [String: AnyJSON]? = nil, usBankAccount: InvoicePaymentMethodOptionsUsBankAccount? = nil) {
        self.acssDebit = acssDebit
        self.bancontact = bancontact
        self.card = card
        self.customerBalance = customerBalance
        self.konbini = konbini
        self.usBankAccount = usBankAccount
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.acssDebit = try values.decodeIfPresent(InvoicePaymentMethodOptionsAcssDebit.self, forKey: "acss_debit")
        self.bancontact = try values.decodeIfPresent(InvoicePaymentMethodOptionsBancontact.self, forKey: "bancontact")
        self.card = try values.decodeIfPresent(InvoicePaymentMethodOptionsCard.self, forKey: "card")
        self.customerBalance = try values.decodeIfPresent(InvoicePaymentMethodOptionsCustomerBalance.self, forKey: "customer_balance")
        self.konbini = try values.decodeIfPresent([String: AnyJSON].self, forKey: "konbini")
        self.usBankAccount = try values.decodeIfPresent(InvoicePaymentMethodOptionsUsBankAccount.self, forKey: "us_bank_account")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(acssDebit, forKey: "acss_debit")
        try values.encodeIfPresent(bancontact, forKey: "bancontact")
        try values.encodeIfPresent(card, forKey: "card")
        try values.encodeIfPresent(customerBalance, forKey: "customer_balance")
        try values.encodeIfPresent(konbini, forKey: "konbini")
        try values.encodeIfPresent(usBankAccount, forKey: "us_bank_account")
    }
}
