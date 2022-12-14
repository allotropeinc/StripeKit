// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// [Stripe Connect](https://stripe.com/docs/connect) platforms can reverse transfers made to a
/// connected account, either entirely or partially, and can also specify whether
/// to refund any related application fees. Transfer reversals add to the
/// platform's balance and subtract from the destination account's balance.
/// 
/// Reversing a transfer that was made for a [destination
/// charge](/docs/connect/destination-charges) is allowed only up to the amount of
/// the charge. It is possible to reverse a
/// [transfer_group](https://stripe.com/docs/connect/charges-transfers#transfer-options)
/// transfer only if the destination account has enough balance to cover the
/// reversal.
/// 
/// Related guide: [Reversing Transfers](https://stripe.com/docs/connect/charges-transfers#reversing-transfers).
public struct TransferReversal: Codable {
    /// Amount, in %s.
    public var amount: Int
    /// Balance transaction that describes the impact on your account balance.
    public var balanceTransaction: BalanceTransaction?
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String
    /// Linked payment refund for the transfer reversal.
    public var destinationPaymentRefund: DestinationPaymentRefund?
    /// Unique identifier for the object.
    public var id: String
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public var metadata: [String: String]?
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// ID of the refund responsible for the transfer reversal.
    public var sourceRefund: SourceRefund?
    /// ID of the transfer that was reversed.
    public var transfer: Transfer

    /// Balance transaction that describes the impact on your account balance.
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

    /// Linked payment refund for the transfer reversal.
    public struct DestinationPaymentRefund: Codable {
        public var string: String?
        /// `Refund` objects allow you to refund a charge that has previously been created
        /// but not yet refunded. Funds will be refunded to the credit or debit card that
        /// was originally charged.
        /// 
        /// Related guide: [Refunds](https://stripe.com/docs/refunds).
        public var refund: Refund?

        public init(string: String? = nil, refund: Refund? = nil) {
            self.string = string
            self.refund = refund
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.refund = try? container.decode(Refund.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = refund { try container.encode(value) }
        }
    }

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case transferReversal = "transfer_reversal"
    }

    /// ID of the refund responsible for the transfer reversal.
    public struct SourceRefund: Codable {
        public var string: String?
        /// `Refund` objects allow you to refund a charge that has previously been created
        /// but not yet refunded. Funds will be refunded to the credit or debit card that
        /// was originally charged.
        /// 
        /// Related guide: [Refunds](https://stripe.com/docs/refunds).
        public var refund: Refund?

        public init(string: String? = nil, refund: Refund? = nil) {
            self.string = string
            self.refund = refund
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.refund = try? container.decode(Refund.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = refund { try container.encode(value) }
        }
    }

    /// ID of the transfer that was reversed.
    public final class Transfer: Codable {
        public let string: String?
        /// A `Transfer` object is created when you move funds between Stripe accounts as
        /// part of Connect.
        /// 
        /// Before April 6, 2017, transfers also represented movement of funds from a
        /// Stripe account to a card or bank account. This behavior has since been split
        /// out into a [Payout](https://stripe.com/docs/api#payout_object) object, with corresponding payout endpoints. For more
        /// information, read about the
        /// [transfer/payout split](https://stripe.com/docs/transfer-payout-split).
        /// 
        /// Related guide: [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/charges-transfers).
        public let transfer: StripeKit.Transfer?

        public init(string: String? = nil, transfer: StripeKit.Transfer? = nil) {
            self.string = string
            self.transfer = transfer
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.transfer = try? container.decode(StripeKit.Transfer.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = transfer { try container.encode(value) }
        }
    }

    public init(amount: Int, balanceTransaction: BalanceTransaction? = nil, created: Int, currency: String, destinationPaymentRefund: DestinationPaymentRefund? = nil, id: String, metadata: [String: String]? = nil, object: Object, sourceRefund: SourceRefund? = nil, transfer: Transfer) {
        self.amount = amount
        self.balanceTransaction = balanceTransaction
        self.created = created
        self.currency = currency
        self.destinationPaymentRefund = destinationPaymentRefund
        self.id = id
        self.metadata = metadata
        self.object = object
        self.sourceRefund = sourceRefund
        self.transfer = transfer
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.balanceTransaction = try values.decodeIfPresent(BalanceTransaction.self, forKey: "balance_transaction")
        self.created = try values.decode(Int.self, forKey: "created")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.destinationPaymentRefund = try values.decodeIfPresent(DestinationPaymentRefund.self, forKey: "destination_payment_refund")
        self.id = try values.decode(String.self, forKey: "id")
        self.metadata = try values.decodeIfPresent([String: String].self, forKey: "metadata")
        self.object = try values.decode(Object.self, forKey: "object")
        self.sourceRefund = try values.decodeIfPresent(SourceRefund.self, forKey: "source_refund")
        self.transfer = try values.decode(Transfer.self, forKey: "transfer")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encodeIfPresent(balanceTransaction, forKey: "balance_transaction")
        try values.encode(created, forKey: "created")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(destinationPaymentRefund, forKey: "destination_payment_refund")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(metadata, forKey: "metadata")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(sourceRefund, forKey: "source_refund")
        try values.encode(transfer, forKey: "transfer")
    }
}
