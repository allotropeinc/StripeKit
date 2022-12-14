// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Some payment methods have no required amount that a customer must send.
/// Customers can be instructed to send any amount, and it can be made up of
/// multiple transactions. As such, sources can have multiple associated
/// transactions.
public struct SourceTransaction: Codable {
    /// SourceTransactionAchCreditTransferData
    public var achCreditTransfer: SourceTransactionAchCreditTransferData?
    /// A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount your customer has pushed to the receiver.
    public var amount: Int
    /// SourceTransactionChfCreditTransferData
    public var chfCreditTransfer: SourceTransactionChfCreditTransferData?
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String
    /// SourceTransactionGbpCreditTransferData
    public var gbpCreditTransfer: SourceTransactionGbpCreditTransferData?
    /// Unique identifier for the object.
    public var id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// SourceTransactionPaperCheckData
    public var paperCheck: SourceTransactionPaperCheckData?
    /// SourceTransactionSepaCreditTransferData
    public var sepaCreditTransfer: SourceTransactionSepaCreditTransferData?
    /// The ID of the source this transaction is attached to.
    public var source: String
    /// The status of the transaction, one of `succeeded`, `pending`, or `failed`.
    public var status: String
    /// The type of source this transaction is attached to.
    public var type: `Type`

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case sourceTransaction = "source_transaction"
    }

    /// The type of source this transaction is attached to.
    public enum `Type`: String, Codable, CaseIterable {
        case achCreditTransfer = "ach_credit_transfer"
        case achDebit = "ach_debit"
        case alipay
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

    public init(achCreditTransfer: SourceTransactionAchCreditTransferData? = nil, amount: Int, chfCreditTransfer: SourceTransactionChfCreditTransferData? = nil, created: Int, currency: String, gbpCreditTransfer: SourceTransactionGbpCreditTransferData? = nil, id: String, isLivemode: Bool, object: Object, paperCheck: SourceTransactionPaperCheckData? = nil, sepaCreditTransfer: SourceTransactionSepaCreditTransferData? = nil, source: String, status: String, type: `Type`) {
        self.achCreditTransfer = achCreditTransfer
        self.amount = amount
        self.chfCreditTransfer = chfCreditTransfer
        self.created = created
        self.currency = currency
        self.gbpCreditTransfer = gbpCreditTransfer
        self.id = id
        self.isLivemode = isLivemode
        self.object = object
        self.paperCheck = paperCheck
        self.sepaCreditTransfer = sepaCreditTransfer
        self.source = source
        self.status = status
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.achCreditTransfer = try values.decodeIfPresent(SourceTransactionAchCreditTransferData.self, forKey: "ach_credit_transfer")
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.chfCreditTransfer = try values.decodeIfPresent(SourceTransactionChfCreditTransferData.self, forKey: "chf_credit_transfer")
        self.created = try values.decode(Int.self, forKey: "created")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.gbpCreditTransfer = try values.decodeIfPresent(SourceTransactionGbpCreditTransferData.self, forKey: "gbp_credit_transfer")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.object = try values.decode(Object.self, forKey: "object")
        self.paperCheck = try values.decodeIfPresent(SourceTransactionPaperCheckData.self, forKey: "paper_check")
        self.sepaCreditTransfer = try values.decodeIfPresent(SourceTransactionSepaCreditTransferData.self, forKey: "sepa_credit_transfer")
        self.source = try values.decode(String.self, forKey: "source")
        self.status = try values.decode(String.self, forKey: "status")
        self.type = try values.decode(`Type`.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(achCreditTransfer, forKey: "ach_credit_transfer")
        try values.encode(amount, forKey: "amount")
        try values.encodeIfPresent(chfCreditTransfer, forKey: "chf_credit_transfer")
        try values.encode(created, forKey: "created")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(gbpCreditTransfer, forKey: "gbp_credit_transfer")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(paperCheck, forKey: "paper_check")
        try values.encodeIfPresent(sepaCreditTransfer, forKey: "sepa_credit_transfer")
        try values.encode(source, forKey: "source")
        try values.encode(status, forKey: "status")
        try values.encode(type, forKey: "type")
    }
}
