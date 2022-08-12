// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A `Payout` object is created when you receive funds from Stripe, or when you
/// initiate a payout to either a bank account or debit card of a [connected
/// Stripe account](/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
/// as well as list all payouts. Payouts are made on [varying
/// schedules](/docs/connect/manage-payout-schedule), depending on your country and
/// industry.
/// 
/// Related guide: [Receiving Payouts](https://stripe.com/docs/payouts).
public final class Payout: Codable {
    /// Amount (in %s) to be transferred to your bank account or debit card.
    public let amount: Int
    /// Date the payout is expected to arrive in the bank. This factors in delays like weekends or bank holidays.
    public let arrivalDate: Int
    /// Returns `true` if the payout was created by an [automated payout schedule](https://stripe.com/docs/payouts#payout-schedule), and `false` if it was [requested manually](https://stripe.com/docs/payouts#manual-payouts).
    public let isAutomatic: Bool
    /// ID of the balance transaction that describes the impact of this payout on your account balance.
    public let balanceTransaction: BalanceTransaction?
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public let created: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public let currency: String
    /// An arbitrary string attached to the object. Often useful for displaying to users.
    public let description: String?
    /// ID of the bank account or card the payout was sent to.
    public let destination: Destination?
    /// If the payout failed or was canceled, this will be the ID of the balance transaction that reversed the initial balance transaction, and puts the funds from the failed payout back in your balance.
    public let failureBalanceTransaction: FailureBalanceTransaction?
    /// Error code explaining reason for payout failure if available. See [Types of payout failures](https://stripe.com/docs/api#payout_failures) for a list of failure codes.
    public let failureCode: String?
    /// Message to user further explaining reason for payout failure if available.
    public let failureMessage: String?
    /// Unique identifier for the object.
    public let id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public let isLivemode: Bool
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public let metadata: [String: String]?
    /// The method used to send this payout, which can be `standard` or `instant`. `instant` is only supported for payouts to debit cards. (See [Instant payouts for marketplaces](https://stripe.com/blog/instant-payouts-for-marketplaces) for more information.)
    public let method: String
    /// String representing the object's type. Objects of the same type share the same value.
    public let object: Object
    /// If the payout reverses another, this is the ID of the original payout.
    public let originalPayout: OriginalPayout?
    /// If the payout was reversed, this is the ID of the payout that reverses this payout.
    public let reversedBy: ReversedBy?
    /// The source balance this payout came from. One of `card`, `fpx`, or `bank_account`.
    public let sourceType: String
    /// Extra information about a payout to be displayed on the user's bank statement.
    public let statementDescriptor: String?
    /// Current status of the payout: `paid`, `pending`, `in_transit`, `canceled` or `failed`. A payout is `pending` until it is submitted to the bank, when it becomes `in_transit`. The status then changes to `paid` if the transaction goes through, or to `failed` or `canceled` (within 5 business days). Some failed payouts may initially show as `paid` but then change to `failed`.
    public let status: String
    /// Can be `bank_account` or `card`.
    public let type: `Type`

    /// ID of the balance transaction that describes the impact of this payout on your account balance.
    public final class BalanceTransaction: Codable {
        public let string: String?
        /// Balance transactions represent funds moving through your Stripe account.
        /// They're created for every type of transaction that comes into or flows out of your Stripe account balance.
        /// 
        /// Related guide: [Balance Transaction Types](https://stripe.com/docs/reports/balance-transaction-types).
        public let balanceTransaction: StripeKit.BalanceTransaction?

        public init(string: String? = nil, balanceTransaction: StripeKit.BalanceTransaction? = nil) {
            self.string = string
            self.balanceTransaction = balanceTransaction
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.balanceTransaction = try? container.decode(StripeKit.BalanceTransaction.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = balanceTransaction { try container.encode(value) }
        }
    }

    /// ID of the bank account or card the payout was sent to.
    public struct Destination: Codable {
        public var string: String?
        /// These bank accounts are payment methods on `Customer` objects.
        /// 
        /// On the other hand [External Accounts](https://stripe.com/docs/api#external_accounts) are transfer
        /// destinations on `Account` objects for [Custom accounts](https://stripe.com/docs/connect/custom-accounts).
        /// They can be bank accounts or debit cards as well, and are documented in the links above.
        /// 
        /// Related guide: [Bank Debits and Transfers](https://stripe.com/docs/payments/bank-debits-transfers).
        public var bankAccount: BankAccount?
        /// You can store multiple cards on a customer in order to charge the customer
        /// later. You can also store multiple debit cards on a recipient in order to
        /// transfer to those cards later.
        /// 
        /// Related guide: [Card Payments with Sources](https://stripe.com/docs/sources/cards).
        public var card: Card?
        public var deletedBankAccount: DeletedBankAccount?
        public var deletedCard: DeletedCard?

        public init(string: String? = nil, bankAccount: BankAccount? = nil, card: Card? = nil, deletedBankAccount: DeletedBankAccount? = nil, deletedCard: DeletedCard? = nil) {
            self.string = string
            self.bankAccount = bankAccount
            self.card = card
            self.deletedBankAccount = deletedBankAccount
            self.deletedCard = deletedCard
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.bankAccount = try? container.decode(BankAccount.self)
            self.card = try? container.decode(Card.self)
            self.deletedBankAccount = try? container.decode(DeletedBankAccount.self)
            self.deletedCard = try? container.decode(DeletedCard.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = bankAccount { try container.encode(value) }
            if let value = card { try container.encode(value) }
            if let value = deletedBankAccount { try container.encode(value) }
            if let value = deletedCard { try container.encode(value) }
        }
    }

    /// If the payout failed or was canceled, this will be the ID of the balance transaction that reversed the initial balance transaction, and puts the funds from the failed payout back in your balance.
    public struct FailureBalanceTransaction: Codable {
        public var string: String?
        /// Balance transactions represent funds moving through your Stripe account.
        /// They're created for every type of transaction that comes into or flows out of your Stripe account balance.
        /// 
        /// Related guide: [Balance Transaction Types](https://stripe.com/docs/reports/balance-transaction-types).
        public var balanceTransaction: BalanceTransaction?

        public init(string: String? = nil, balanceTransaction: BalanceTransaction? = nil) {
            self.string = string
            self.balanceTransaction = balanceTransaction
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.balanceTransaction = try? container.decode(BalanceTransaction.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = balanceTransaction { try container.encode(value) }
        }
    }

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case payout
    }

    /// If the payout reverses another, this is the ID of the original payout.
    public struct OriginalPayout: Codable {
        public var string: String?
        /// A `Payout` object is created when you receive funds from Stripe, or when you
        /// initiate a payout to either a bank account or debit card of a [connected
        /// Stripe account](/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
        /// as well as list all payouts. Payouts are made on [varying
        /// schedules](/docs/connect/manage-payout-schedule), depending on your country and
        /// industry.
        /// 
        /// Related guide: [Receiving Payouts](https://stripe.com/docs/payouts).
        public var payout: Payout?

        public init(string: String? = nil, payout: Payout? = nil) {
            self.string = string
            self.payout = payout
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.payout = try? container.decode(Payout.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = payout { try container.encode(value) }
        }
    }

    /// If the payout was reversed, this is the ID of the payout that reverses this payout.
    public struct ReversedBy: Codable {
        public var string: String?
        /// A `Payout` object is created when you receive funds from Stripe, or when you
        /// initiate a payout to either a bank account or debit card of a [connected
        /// Stripe account](/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts,
        /// as well as list all payouts. Payouts are made on [varying
        /// schedules](/docs/connect/manage-payout-schedule), depending on your country and
        /// industry.
        /// 
        /// Related guide: [Receiving Payouts](https://stripe.com/docs/payouts).
        public var payout: Payout?

        public init(string: String? = nil, payout: Payout? = nil) {
            self.string = string
            self.payout = payout
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.payout = try? container.decode(Payout.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = payout { try container.encode(value) }
        }
    }

    /// Can be `bank_account` or `card`.
    public enum `Type`: String, Codable, CaseIterable {
        case bankAccount = "bank_account"
        case card
    }

    public init(amount: Int, arrivalDate: Int, isAutomatic: Bool, balanceTransaction: BalanceTransaction? = nil, created: Int, currency: String, description: String? = nil, destination: Destination? = nil, failureBalanceTransaction: FailureBalanceTransaction? = nil, failureCode: String? = nil, failureMessage: String? = nil, id: String, isLivemode: Bool, metadata: [String: String]? = nil, method: String, object: Object, originalPayout: OriginalPayout? = nil, reversedBy: ReversedBy? = nil, sourceType: String, statementDescriptor: String? = nil, status: String, type: `Type`) {
        self.amount = amount
        self.arrivalDate = arrivalDate
        self.isAutomatic = isAutomatic
        self.balanceTransaction = balanceTransaction
        self.created = created
        self.currency = currency
        self.description = description
        self.destination = destination
        self.failureBalanceTransaction = failureBalanceTransaction
        self.failureCode = failureCode
        self.failureMessage = failureMessage
        self.id = id
        self.isLivemode = isLivemode
        self.metadata = metadata
        self.method = method
        self.object = object
        self.originalPayout = originalPayout
        self.reversedBy = reversedBy
        self.sourceType = sourceType
        self.statementDescriptor = statementDescriptor
        self.status = status
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.arrivalDate = try values.decode(Int.self, forKey: "arrival_date")
        self.isAutomatic = try values.decode(Bool.self, forKey: "automatic")
        self.balanceTransaction = try values.decodeIfPresent(BalanceTransaction.self, forKey: "balance_transaction")
        self.created = try values.decode(Int.self, forKey: "created")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.destination = try values.decodeIfPresent(Destination.self, forKey: "destination")
        self.failureBalanceTransaction = try values.decodeIfPresent(FailureBalanceTransaction.self, forKey: "failure_balance_transaction")
        self.failureCode = try values.decodeIfPresent(String.self, forKey: "failure_code")
        self.failureMessage = try values.decodeIfPresent(String.self, forKey: "failure_message")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.metadata = try values.decodeIfPresent([String: String].self, forKey: "metadata")
        self.method = try values.decode(String.self, forKey: "method")
        self.object = try values.decode(Object.self, forKey: "object")
        self.originalPayout = try values.decodeIfPresent(OriginalPayout.self, forKey: "original_payout")
        self.reversedBy = try values.decodeIfPresent(ReversedBy.self, forKey: "reversed_by")
        self.sourceType = try values.decode(String.self, forKey: "source_type")
        self.statementDescriptor = try values.decodeIfPresent(String.self, forKey: "statement_descriptor")
        self.status = try values.decode(String.self, forKey: "status")
        self.type = try values.decode(`Type`.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encode(arrivalDate, forKey: "arrival_date")
        try values.encode(isAutomatic, forKey: "automatic")
        try values.encodeIfPresent(balanceTransaction, forKey: "balance_transaction")
        try values.encode(created, forKey: "created")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(destination, forKey: "destination")
        try values.encodeIfPresent(failureBalanceTransaction, forKey: "failure_balance_transaction")
        try values.encodeIfPresent(failureCode, forKey: "failure_code")
        try values.encodeIfPresent(failureMessage, forKey: "failure_message")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encodeIfPresent(metadata, forKey: "metadata")
        try values.encode(method, forKey: "method")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(originalPayout, forKey: "original_payout")
        try values.encodeIfPresent(reversedBy, forKey: "reversed_by")
        try values.encode(sourceType, forKey: "source_type")
        try values.encodeIfPresent(statementDescriptor, forKey: "statement_descriptor")
        try values.encode(status, forKey: "status")
        try values.encode(type, forKey: "type")
    }
}