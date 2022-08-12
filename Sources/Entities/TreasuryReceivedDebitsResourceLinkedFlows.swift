// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TreasuryReceivedDebitsResourceLinkedFlows: Codable {
    /// The DebitReversal created as a result of this ReceivedDebit being reversed.
    public var debitReversal: String?
    /// Set if the ReceivedDebit is associated with an InboundTransfer's return of funds.
    public var inboundTransfer: String?
    /// Set if the ReceivedDebit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
    public var issuingAuthorization: String?
    /// Set if the ReceivedDebit is also viewable as an [Issuing Dispute](https://stripe.com/docs/api#issuing_disputes) object.
    public var issuingTransaction: String?

    public init(debitReversal: String? = nil, inboundTransfer: String? = nil, issuingAuthorization: String? = nil, issuingTransaction: String? = nil) {
        self.debitReversal = debitReversal
        self.inboundTransfer = inboundTransfer
        self.issuingAuthorization = issuingAuthorization
        self.issuingTransaction = issuingTransaction
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.debitReversal = try values.decodeIfPresent(String.self, forKey: "debit_reversal")
        self.inboundTransfer = try values.decodeIfPresent(String.self, forKey: "inbound_transfer")
        self.issuingAuthorization = try values.decodeIfPresent(String.self, forKey: "issuing_authorization")
        self.issuingTransaction = try values.decodeIfPresent(String.self, forKey: "issuing_transaction")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(debitReversal, forKey: "debit_reversal")
        try values.encodeIfPresent(inboundTransfer, forKey: "inbound_transfer")
        try values.encodeIfPresent(issuingAuthorization, forKey: "issuing_authorization")
        try values.encodeIfPresent(issuingTransaction, forKey: "issuing_transaction")
    }
}
