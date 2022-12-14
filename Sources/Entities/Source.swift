// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// `Source` objects allow you to accept a variety of payment methods. They
/// represent a customer's payment instrument, and can be used with the Stripe API
/// just like a `Card` object: once chargeable, they can be charged, or can be
/// attached to customers.
/// 
/// Related guides: [Sources API](https://stripe.com/docs/sources) and [Sources & Customers](https://stripe.com/docs/sources/customers).
public struct Source: Codable {
    public var achCreditTransfer: SourceTypeAchCreditTransfer?
    public var achDebit: SourceTypeAchDebit?
    public var acssDebit: SourceTypeAcssDebit?
    public var alipay: SourceTypeAlipay?
    /// A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount associated with the source. This is the amount for which the source will be chargeable once ready. Required for `single_use` sources.
    public var amount: Int?
    public var auBecsDebit: SourceTypeAuBecsDebit?
    public var bancontact: SourceTypeBancontact?
    public var card: SourceTypeCard?
    public var cardPresent: SourceTypeCardPresent?
    /// The client secret of the source. Used for client-side retrieval using a publishable key.
    public var clientSecret: String
    /// SourceCodeVerificationFlow
    public var codeVerification: SourceCodeVerificationFlow?
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// Three-letter [ISO code for the currency](https://stripe.com/docs/currencies) associated with the source. This is the currency for which the source will be chargeable once ready. Required for `single_use` sources.
    public var currency: String?
    /// The ID of the customer to which this source is attached. This will not be present when the source has not been attached to a customer.
    public var customer: String?
    public var eps: SourceTypeEps?
    /// The authentication `flow` of the source. `flow` is one of `redirect`, `receiver`, `code_verification`, `none`.
    public var flow: String
    public var giropay: SourceTypeGiropay?
    /// Unique identifier for the object.
    public var id: String
    public var ideal: SourceTypeIdeal?
    public var klarna: SourceTypeKlarna?
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public var metadata: [String: String]?
    public var multibanco: SourceTypeMultibanco?
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// Information about the owner of the payment instrument that may be used or required by particular source types.
    public var owner: SourceOwner?
    public var p24: SourceTypeP24?
    /// SourceReceiverFlow
    public var receiver: SourceReceiverFlow?
    /// SourceRedirectFlow
    public var redirect: SourceRedirectFlow?
    public var sepaDebit: SourceTypeSepaDebit?
    public var sofort: SourceTypeSofort?
    public var sourceOrder: SourceOrder?
    /// Extra information about a source. This will appear on your customer's statement every time you charge the source.
    public var statementDescriptor: String?
    /// The status of the source, one of `canceled`, `chargeable`, `consumed`, `failed`, or `pending`. Only `chargeable` sources can be used to create a charge.
    public var status: String
    public var threeDSecure: SourceTypeThreeDSecure?
    /// The `type` of the source. The `type` is a payment method, one of `ach_credit_transfer`, `ach_debit`, `alipay`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `multibanco`, `klarna`, `p24`, `sepa_debit`, `sofort`, `three_d_secure`, or `wechat`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https://stripe.com/docs/sources) used.
    public var type: `Type`
    /// Either `reusable` or `single_use`. Whether this source should be reusable or not. Some source types may or may not be reusable by construction, while others may leave the option at creation. If an incompatible value is passed, an error will be returned.
    public var usage: String?
    public var wechat: SourceTypeWechat?

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case source
    }

    /// The `type` of the source. The `type` is a payment method, one of `ach_credit_transfer`, `ach_debit`, `alipay`, `bancontact`, `card`, `card_present`, `eps`, `giropay`, `ideal`, `multibanco`, `klarna`, `p24`, `sepa_debit`, `sofort`, `three_d_secure`, or `wechat`. An additional hash is included on the source with a name matching this value. It contains additional information specific to the [payment method](https://stripe.com/docs/sources) used.
    public enum `Type`: String, Codable, CaseIterable {
        case achCreditTransfer = "ach_credit_transfer"
        case achDebit = "ach_debit"
        case acssDebit = "acss_debit"
        case alipay
        case auBecsDebit = "au_becs_debit"
        case bancontact
        case card
        case cardPresent = "card_present"
        case eps
        case giropay
        case ideal
        case klarna
        case multibanco
        case p24
        case sepaDebit = "sepa_debit"
        case sofort
        case threeDSecure = "three_d_secure"
        case wechat
    }

    public init(achCreditTransfer: SourceTypeAchCreditTransfer? = nil, achDebit: SourceTypeAchDebit? = nil, acssDebit: SourceTypeAcssDebit? = nil, alipay: SourceTypeAlipay? = nil, amount: Int? = nil, auBecsDebit: SourceTypeAuBecsDebit? = nil, bancontact: SourceTypeBancontact? = nil, card: SourceTypeCard? = nil, cardPresent: SourceTypeCardPresent? = nil, clientSecret: String, codeVerification: SourceCodeVerificationFlow? = nil, created: Int, currency: String? = nil, customer: String? = nil, eps: SourceTypeEps? = nil, flow: String, giropay: SourceTypeGiropay? = nil, id: String, ideal: SourceTypeIdeal? = nil, klarna: SourceTypeKlarna? = nil, isLivemode: Bool, metadata: [String: String]? = nil, multibanco: SourceTypeMultibanco? = nil, object: Object, owner: SourceOwner? = nil, p24: SourceTypeP24? = nil, receiver: SourceReceiverFlow? = nil, redirect: SourceRedirectFlow? = nil, sepaDebit: SourceTypeSepaDebit? = nil, sofort: SourceTypeSofort? = nil, sourceOrder: SourceOrder? = nil, statementDescriptor: String? = nil, status: String, threeDSecure: SourceTypeThreeDSecure? = nil, type: `Type`, usage: String? = nil, wechat: SourceTypeWechat? = nil) {
        self.achCreditTransfer = achCreditTransfer
        self.achDebit = achDebit
        self.acssDebit = acssDebit
        self.alipay = alipay
        self.amount = amount
        self.auBecsDebit = auBecsDebit
        self.bancontact = bancontact
        self.card = card
        self.cardPresent = cardPresent
        self.clientSecret = clientSecret
        self.codeVerification = codeVerification
        self.created = created
        self.currency = currency
        self.customer = customer
        self.eps = eps
        self.flow = flow
        self.giropay = giropay
        self.id = id
        self.ideal = ideal
        self.klarna = klarna
        self.isLivemode = isLivemode
        self.metadata = metadata
        self.multibanco = multibanco
        self.object = object
        self.owner = owner
        self.p24 = p24
        self.receiver = receiver
        self.redirect = redirect
        self.sepaDebit = sepaDebit
        self.sofort = sofort
        self.sourceOrder = sourceOrder
        self.statementDescriptor = statementDescriptor
        self.status = status
        self.threeDSecure = threeDSecure
        self.type = type
        self.usage = usage
        self.wechat = wechat
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.achCreditTransfer = try values.decodeIfPresent(SourceTypeAchCreditTransfer.self, forKey: "ach_credit_transfer")
        self.achDebit = try values.decodeIfPresent(SourceTypeAchDebit.self, forKey: "ach_debit")
        self.acssDebit = try values.decodeIfPresent(SourceTypeAcssDebit.self, forKey: "acss_debit")
        self.alipay = try values.decodeIfPresent(SourceTypeAlipay.self, forKey: "alipay")
        self.amount = try values.decodeIfPresent(Int.self, forKey: "amount")
        self.auBecsDebit = try values.decodeIfPresent(SourceTypeAuBecsDebit.self, forKey: "au_becs_debit")
        self.bancontact = try values.decodeIfPresent(SourceTypeBancontact.self, forKey: "bancontact")
        self.card = try values.decodeIfPresent(SourceTypeCard.self, forKey: "card")
        self.cardPresent = try values.decodeIfPresent(SourceTypeCardPresent.self, forKey: "card_present")
        self.clientSecret = try values.decode(String.self, forKey: "client_secret")
        self.codeVerification = try values.decodeIfPresent(SourceCodeVerificationFlow.self, forKey: "code_verification")
        self.created = try values.decode(Int.self, forKey: "created")
        self.currency = try values.decodeIfPresent(String.self, forKey: "currency")
        self.customer = try values.decodeIfPresent(String.self, forKey: "customer")
        self.eps = try values.decodeIfPresent(SourceTypeEps.self, forKey: "eps")
        self.flow = try values.decode(String.self, forKey: "flow")
        self.giropay = try values.decodeIfPresent(SourceTypeGiropay.self, forKey: "giropay")
        self.id = try values.decode(String.self, forKey: "id")
        self.ideal = try values.decodeIfPresent(SourceTypeIdeal.self, forKey: "ideal")
        self.klarna = try values.decodeIfPresent(SourceTypeKlarna.self, forKey: "klarna")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.metadata = try values.decodeIfPresent([String: String].self, forKey: "metadata")
        self.multibanco = try values.decodeIfPresent(SourceTypeMultibanco.self, forKey: "multibanco")
        self.object = try values.decode(Object.self, forKey: "object")
        self.owner = try values.decodeIfPresent(SourceOwner.self, forKey: "owner")
        self.p24 = try values.decodeIfPresent(SourceTypeP24.self, forKey: "p24")
        self.receiver = try values.decodeIfPresent(SourceReceiverFlow.self, forKey: "receiver")
        self.redirect = try values.decodeIfPresent(SourceRedirectFlow.self, forKey: "redirect")
        self.sepaDebit = try values.decodeIfPresent(SourceTypeSepaDebit.self, forKey: "sepa_debit")
        self.sofort = try values.decodeIfPresent(SourceTypeSofort.self, forKey: "sofort")
        self.sourceOrder = try values.decodeIfPresent(SourceOrder.self, forKey: "source_order")
        self.statementDescriptor = try values.decodeIfPresent(String.self, forKey: "statement_descriptor")
        self.status = try values.decode(String.self, forKey: "status")
        self.threeDSecure = try values.decodeIfPresent(SourceTypeThreeDSecure.self, forKey: "three_d_secure")
        self.type = try values.decode(`Type`.self, forKey: "type")
        self.usage = try values.decodeIfPresent(String.self, forKey: "usage")
        self.wechat = try values.decodeIfPresent(SourceTypeWechat.self, forKey: "wechat")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(achCreditTransfer, forKey: "ach_credit_transfer")
        try values.encodeIfPresent(achDebit, forKey: "ach_debit")
        try values.encodeIfPresent(acssDebit, forKey: "acss_debit")
        try values.encodeIfPresent(alipay, forKey: "alipay")
        try values.encodeIfPresent(amount, forKey: "amount")
        try values.encodeIfPresent(auBecsDebit, forKey: "au_becs_debit")
        try values.encodeIfPresent(bancontact, forKey: "bancontact")
        try values.encodeIfPresent(card, forKey: "card")
        try values.encodeIfPresent(cardPresent, forKey: "card_present")
        try values.encode(clientSecret, forKey: "client_secret")
        try values.encodeIfPresent(codeVerification, forKey: "code_verification")
        try values.encode(created, forKey: "created")
        try values.encodeIfPresent(currency, forKey: "currency")
        try values.encodeIfPresent(customer, forKey: "customer")
        try values.encodeIfPresent(eps, forKey: "eps")
        try values.encode(flow, forKey: "flow")
        try values.encodeIfPresent(giropay, forKey: "giropay")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(ideal, forKey: "ideal")
        try values.encodeIfPresent(klarna, forKey: "klarna")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encodeIfPresent(metadata, forKey: "metadata")
        try values.encodeIfPresent(multibanco, forKey: "multibanco")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(owner, forKey: "owner")
        try values.encodeIfPresent(p24, forKey: "p24")
        try values.encodeIfPresent(receiver, forKey: "receiver")
        try values.encodeIfPresent(redirect, forKey: "redirect")
        try values.encodeIfPresent(sepaDebit, forKey: "sepa_debit")
        try values.encodeIfPresent(sofort, forKey: "sofort")
        try values.encodeIfPresent(sourceOrder, forKey: "source_order")
        try values.encodeIfPresent(statementDescriptor, forKey: "statement_descriptor")
        try values.encode(status, forKey: "status")
        try values.encodeIfPresent(threeDSecure, forKey: "three_d_secure")
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(usage, forKey: "usage")
        try values.encodeIfPresent(wechat, forKey: "wechat")
    }
}
