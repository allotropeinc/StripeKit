// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// TreasuryReceivedCreditsResourceCreditReversal
///
/// You can reverse some [ReceivedCredits](https://stripe.com/docs/api#received_credits) depending on their network and source flow. Reversing a ReceivedCredit leads to the creation of a new object known as a CreditReversal.
public final class TreasuryCreditReversal: Codable {
    /// Amount (in cents) transferred.
    public let amount: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public let currency: String
    /// The FinancialAccount to reverse funds from.
    public let financialAccount: String
    /// A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
    public let hostedRegulatoryReceiptURL: String?
    /// Unique identifier for the object.
    public let id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public let isLivemode: Bool
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public let metadata: [String: String]
    /// The rails used to reverse the funds.
    public let network: Network
    /// String representing the object's type. Objects of the same type share the same value.
    public let object: Object
    /// The ReceivedCredit being reversed.
    public let receivedCredit: String
    /// Status of the CreditReversal
    public let status: Status
    /// TreasuryReceivedCreditsResourceStatusTransitions
    public let statusTransitions: TreasuryReceivedCreditsResourceStatusTransitions
    /// The Transaction associated with this object.
    public let transaction: Transaction?

    /// The rails used to reverse the funds.
    public enum Network: String, Codable, CaseIterable {
        case ach
        case stripe
    }

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case treasuryCreditReversal = "treasury.credit_reversal"
    }

    /// Status of the CreditReversal
    public enum Status: String, Codable, CaseIterable {
        case canceled
        case posted
        case processing
    }

    /// The Transaction associated with this object.
    public struct Transaction: Codable {
        public var string: String?
        /// TreasuryTransactionsResourceTransaction
        ///
        /// Transactions represent changes to a [FinancialAccount's](https://stripe.com/docs/api#financial_accounts) balance.
        public var treasuryTransaction: TreasuryTransaction?

        public init(string: String? = nil, treasuryTransaction: TreasuryTransaction? = nil) {
            self.string = string
            self.treasuryTransaction = treasuryTransaction
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.treasuryTransaction = try? container.decode(TreasuryTransaction.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = treasuryTransaction { try container.encode(value) }
        }
    }

    public init(amount: Int, currency: String, financialAccount: String, hostedRegulatoryReceiptURL: String? = nil, id: String, isLivemode: Bool, metadata: [String: String], network: Network, object: Object, receivedCredit: String, status: Status, statusTransitions: TreasuryReceivedCreditsResourceStatusTransitions, transaction: Transaction? = nil) {
        self.amount = amount
        self.currency = currency
        self.financialAccount = financialAccount
        self.hostedRegulatoryReceiptURL = hostedRegulatoryReceiptURL
        self.id = id
        self.isLivemode = isLivemode
        self.metadata = metadata
        self.network = network
        self.object = object
        self.receivedCredit = receivedCredit
        self.status = status
        self.statusTransitions = statusTransitions
        self.transaction = transaction
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.financialAccount = try values.decode(String.self, forKey: "financial_account")
        self.hostedRegulatoryReceiptURL = try values.decodeIfPresent(String.self, forKey: "hosted_regulatory_receipt_url")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.metadata = try values.decode([String: String].self, forKey: "metadata")
        self.network = try values.decode(Network.self, forKey: "network")
        self.object = try values.decode(Object.self, forKey: "object")
        self.receivedCredit = try values.decode(String.self, forKey: "received_credit")
        self.status = try values.decode(Status.self, forKey: "status")
        self.statusTransitions = try values.decode(TreasuryReceivedCreditsResourceStatusTransitions.self, forKey: "status_transitions")
        self.transaction = try values.decodeIfPresent(Transaction.self, forKey: "transaction")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encode(currency, forKey: "currency")
        try values.encode(financialAccount, forKey: "financial_account")
        try values.encodeIfPresent(hostedRegulatoryReceiptURL, forKey: "hosted_regulatory_receipt_url")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(metadata, forKey: "metadata")
        try values.encode(network, forKey: "network")
        try values.encode(object, forKey: "object")
        try values.encode(receivedCredit, forKey: "received_credit")
        try values.encode(status, forKey: "status")
        try values.encode(statusTransitions, forKey: "status_transitions")
        try values.encodeIfPresent(transaction, forKey: "transaction")
    }
}