// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// `Refund` objects allow you to refund a charge that has previously been created
/// but not yet refunded. Funds will be refunded to the credit or debit card that
/// was originally charged.
/// 
/// Related guide: [Refunds](https://stripe.com/docs/refunds).
public final class Refund: Codable {
    /// Amount, in %s.
    public let amount: Int
    /// Balance transaction that describes the impact on your account balance.
    public let balanceTransaction: BalanceTransaction?
    /// ID of the charge that was refunded.
    public let charge: Charge?
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public let created: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public let currency: String
    /// An arbitrary string attached to the object. Often useful for displaying to users. (Available on non-card refunds only)
    public let description: String?
    /// If the refund failed, this balance transaction describes the adjustment made on your account balance that reverses the initial balance transaction.
    public let failureBalanceTransaction: FailureBalanceTransaction?
    /// If the refund failed, the reason for refund failure if known. Possible values are `lost_or_stolen_card`, `expired_or_canceled_card`, or `unknown`.
    public let failureReason: String?
    /// Unique identifier for the object.
    public let id: String
    /// Email to which refund instructions, if required, are sent to.
    public let instructionsEmail: String?
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public let metadata: [String: String]?
    /// RefundNextAction
    public let nextAction: RefundNextAction?
    /// String representing the object's type. Objects of the same type share the same value.
    public let object: Object
    /// ID of the PaymentIntent that was refunded.
    public let paymentIntent: PaymentIntent?
    /// Reason for the refund, either user-provided (`duplicate`, `fraudulent`, or `requested_by_customer`) or generated by Stripe internally (`expired_uncaptured_charge`).
    public let reason: Reason?
    /// This is the transaction number that appears on email receipts sent for this refund.
    public let receiptNumber: String?
    /// The transfer reversal that is associated with the refund. Only present if the charge came from another Stripe account. See the Connect documentation for details.
    public let sourceTransferReversal: SourceTransferReversal?
    /// Status of the refund. For credit card refunds, this can be `pending`, `succeeded`, or `failed`. For other types of refunds, it can be `pending`, `requires_action`, `succeeded`, `failed`, or `canceled`. Refer to our [refunds](https://stripe.com/docs/refunds#failed-refunds) documentation for more details.
    public let status: String?
    /// If the accompanying transfer was reversed, the transfer reversal object. Only applicable if the charge was created using the destination parameter.
    public let transferReversal: TransferReversal?

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

    /// ID of the charge that was refunded.
    public final class Charge: Codable {
        public let string: String?
        /// To charge a credit or a debit card, you create a `Charge` object. You can
        /// retrieve and refund individual charges as well as list all charges. Charges
        /// are identified by a unique, random ID.
        /// 
        /// Related guide: [Accept a payment with the Charges API](https://stripe.com/docs/payments/accept-a-payment-charges).
        public let charge: StripeKit.Charge?

        public init(string: String? = nil, charge: StripeKit.Charge? = nil) {
            self.string = string
            self.charge = charge
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.charge = try? container.decode(StripeKit.Charge.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = charge { try container.encode(value) }
        }
    }

    /// If the refund failed, this balance transaction describes the adjustment made on your account balance that reverses the initial balance transaction.
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
        case refund
    }

    /// ID of the PaymentIntent that was refunded.
    public final class PaymentIntent: Codable {
        public let string: String?
        /// A PaymentIntent guides you through the process of collecting a payment from your customer.
        /// We recommend that you create exactly one PaymentIntent for each order or
        /// customer session in your system. You can reference the PaymentIntent later to
        /// see the history of payment attempts for a particular session.
        /// 
        /// A PaymentIntent transitions through
        /// [multiple statuses](https://stripe.com/docs/payments/intents#intent-statuses)
        /// throughout its lifetime as it interfaces with Stripe.js to perform
        /// authentication flows and ultimately creates at most one successful charge.
        /// 
        /// Related guide: [Payment Intents API](https://stripe.com/docs/payments/payment-intents).
        public let paymentIntent: StripeKit.PaymentIntent?

        public init(string: String? = nil, paymentIntent: StripeKit.PaymentIntent? = nil) {
            self.string = string
            self.paymentIntent = paymentIntent
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.paymentIntent = try? container.decode(StripeKit.PaymentIntent.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = paymentIntent { try container.encode(value) }
        }
    }

    /// Reason for the refund, either user-provided (`duplicate`, `fraudulent`, or `requested_by_customer`) or generated by Stripe internally (`expired_uncaptured_charge`).
    public enum Reason: String, Codable, CaseIterable {
        case duplicate
        case expiredUncapturedCharge = "expired_uncaptured_charge"
        case fraudulent
        case requestedByCustomer = "requested_by_customer"
    }

    /// The transfer reversal that is associated with the refund. Only present if the charge came from another Stripe account. See the Connect documentation for details.
    public struct SourceTransferReversal: Codable {
        public var string: String?
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
        public var transferReversal: TransferReversal?

        public init(string: String? = nil, transferReversal: TransferReversal? = nil) {
            self.string = string
            self.transferReversal = transferReversal
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.transferReversal = try? container.decode(TransferReversal.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = transferReversal { try container.encode(value) }
        }
    }

    /// If the accompanying transfer was reversed, the transfer reversal object. Only applicable if the charge was created using the destination parameter.
    public final class TransferReversal: Codable {
        public let string: String?
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
        public let transferReversal: StripeKit.TransferReversal?

        public init(string: String? = nil, transferReversal: StripeKit.TransferReversal? = nil) {
            self.string = string
            self.transferReversal = transferReversal
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.transferReversal = try? container.decode(StripeKit.TransferReversal.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = transferReversal { try container.encode(value) }
        }
    }

    public init(amount: Int, balanceTransaction: BalanceTransaction? = nil, charge: Charge? = nil, created: Int, currency: String, description: String? = nil, failureBalanceTransaction: FailureBalanceTransaction? = nil, failureReason: String? = nil, id: String, instructionsEmail: String? = nil, metadata: [String: String]? = nil, nextAction: RefundNextAction? = nil, object: Object, paymentIntent: PaymentIntent? = nil, reason: Reason? = nil, receiptNumber: String? = nil, sourceTransferReversal: SourceTransferReversal? = nil, status: String? = nil, transferReversal: TransferReversal? = nil) {
        self.amount = amount
        self.balanceTransaction = balanceTransaction
        self.charge = charge
        self.created = created
        self.currency = currency
        self.description = description
        self.failureBalanceTransaction = failureBalanceTransaction
        self.failureReason = failureReason
        self.id = id
        self.instructionsEmail = instructionsEmail
        self.metadata = metadata
        self.nextAction = nextAction
        self.object = object
        self.paymentIntent = paymentIntent
        self.reason = reason
        self.receiptNumber = receiptNumber
        self.sourceTransferReversal = sourceTransferReversal
        self.status = status
        self.transferReversal = transferReversal
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.balanceTransaction = try values.decodeIfPresent(BalanceTransaction.self, forKey: "balance_transaction")
        self.charge = try values.decodeIfPresent(Charge.self, forKey: "charge")
        self.created = try values.decode(Int.self, forKey: "created")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.failureBalanceTransaction = try values.decodeIfPresent(FailureBalanceTransaction.self, forKey: "failure_balance_transaction")
        self.failureReason = try values.decodeIfPresent(String.self, forKey: "failure_reason")
        self.id = try values.decode(String.self, forKey: "id")
        self.instructionsEmail = try values.decodeIfPresent(String.self, forKey: "instructions_email")
        self.metadata = try values.decodeIfPresent([String: String].self, forKey: "metadata")
        self.nextAction = try values.decodeIfPresent(RefundNextAction.self, forKey: "next_action")
        self.object = try values.decode(Object.self, forKey: "object")
        self.paymentIntent = try values.decodeIfPresent(PaymentIntent.self, forKey: "payment_intent")
        self.reason = try values.decodeIfPresent(Reason.self, forKey: "reason")
        self.receiptNumber = try values.decodeIfPresent(String.self, forKey: "receipt_number")
        self.sourceTransferReversal = try values.decodeIfPresent(SourceTransferReversal.self, forKey: "source_transfer_reversal")
        self.status = try values.decodeIfPresent(String.self, forKey: "status")
        self.transferReversal = try values.decodeIfPresent(TransferReversal.self, forKey: "transfer_reversal")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encodeIfPresent(balanceTransaction, forKey: "balance_transaction")
        try values.encodeIfPresent(charge, forKey: "charge")
        try values.encode(created, forKey: "created")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(failureBalanceTransaction, forKey: "failure_balance_transaction")
        try values.encodeIfPresent(failureReason, forKey: "failure_reason")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(instructionsEmail, forKey: "instructions_email")
        try values.encodeIfPresent(metadata, forKey: "metadata")
        try values.encodeIfPresent(nextAction, forKey: "next_action")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(paymentIntent, forKey: "payment_intent")
        try values.encodeIfPresent(reason, forKey: "reason")
        try values.encodeIfPresent(receiptNumber, forKey: "receipt_number")
        try values.encodeIfPresent(sourceTransferReversal, forKey: "source_transfer_reversal")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(transferReversal, forKey: "transfer_reversal")
    }
}