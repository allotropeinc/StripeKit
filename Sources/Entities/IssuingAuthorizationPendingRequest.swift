// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingAuthorizationPendingRequest: Codable {
    /// The additional amount Stripe will hold if the authorization is approved, in the card's [currency](https://stripe.com/docs/api#issuing_authorization_object-pending-request-currency) and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    public var amount: Int
    /// Detailed breakdown of amount components. These amounts are denominated in `currency` and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    public var amountDetails: IssuingAuthorizationAmountDetails?
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String
    /// If set `true`, you may provide [amount](https://stripe.com/docs/api/issuing/authorizations/approve#approve_issuing_authorization-amount) to control how much to hold for the authorization.
    public var isAmountControllable: Bool
    /// The amount the merchant is requesting to be authorized in the `merchant_currency`. The amount is in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    public var merchantAmount: Int
    /// The local currency the merchant is requesting to authorize.
    public var merchantCurrency: String

    public init(amount: Int, amountDetails: IssuingAuthorizationAmountDetails? = nil, currency: String, isAmountControllable: Bool, merchantAmount: Int, merchantCurrency: String) {
        self.amount = amount
        self.amountDetails = amountDetails
        self.currency = currency
        self.isAmountControllable = isAmountControllable
        self.merchantAmount = merchantAmount
        self.merchantCurrency = merchantCurrency
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.amountDetails = try values.decodeIfPresent(IssuingAuthorizationAmountDetails.self, forKey: "amount_details")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.isAmountControllable = try values.decode(Bool.self, forKey: "is_amount_controllable")
        self.merchantAmount = try values.decode(Int.self, forKey: "merchant_amount")
        self.merchantCurrency = try values.decode(String.self, forKey: "merchant_currency")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encodeIfPresent(amountDetails, forKey: "amount_details")
        try values.encode(currency, forKey: "currency")
        try values.encode(isAmountControllable, forKey: "is_amount_controllable")
        try values.encode(merchantAmount, forKey: "merchant_amount")
        try values.encode(merchantCurrency, forKey: "merchant_currency")
    }
}
