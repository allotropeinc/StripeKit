// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// TreasuryInboundTransfersResourceInboundTransfer
///
/// Use [InboundTransfers](https://stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://stripe.com/docs/api#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
public final class TreasuryInboundTransfer: Codable {
    /// Amount (in cents) transferred.
    public let amount: Int
    /// Returns `true` if the InboundTransfer is able to be canceled.
    public let isCancelable: Bool
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public let created: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public let currency: String
    /// An arbitrary string attached to the object. Often useful for displaying to users.
    public let description: String?
    /// Details about this InboundTransfer's failure. Only set when status is `failed`.
    public let failureDetails: TreasuryInboundTransfersResourceFailureDetails?
    /// The FinancialAccount that received the funds.
    public let financialAccount: String
    /// A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
    public let hostedRegulatoryReceiptURL: String?
    /// Unique identifier for the object.
    public let id: String
    /// TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows
    public let linkedFlows: TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public let isLivemode: Bool
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public let metadata: [String: String]
    /// String representing the object's type. Objects of the same type share the same value.
    public let object: Object
    /// The origin payment method to be debited for an InboundTransfer.
    public let originPaymentMethod: String
    /// Details about the PaymentMethod for an InboundTransfer.
    public let originPaymentMethodDetails: InboundTransfers?
    /// Returns `true` if the funds for an InboundTransfer were returned after the InboundTransfer went to the `succeeded` state.
    public let isReturned: Bool?
    /// Statement descriptor shown when funds are debited from the source. Not all payment networks support `statement_descriptor`.
    public let statementDescriptor: String
    /// Status of the InboundTransfer: `processing`, `succeeded`, `failed`, and `canceled`. An InboundTransfer is `processing` if it is created and pending. The status changes to `succeeded` once the funds have been "confirmed" and a `transaction` is created and posted. The status changes to `failed` if the transfer fails.
    public let status: Status
    /// TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions
    public let statusTransitions: TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions
    /// The Transaction associated with this object.
    public let transaction: Transaction?

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case treasuryInboundTransfer = "treasury.inbound_transfer"
    }

    /// Status of the InboundTransfer: `processing`, `succeeded`, `failed`, and `canceled`. An InboundTransfer is `processing` if it is created and pending. The status changes to `succeeded` once the funds have been "confirmed" and a `transaction` is created and posted. The status changes to `failed` if the transfer fails.
    public enum Status: String, Codable, CaseIterable {
        case canceled
        case failed
        case processing
        case succeeded
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

    public init(amount: Int, isCancelable: Bool, created: Int, currency: String, description: String? = nil, failureDetails: TreasuryInboundTransfersResourceFailureDetails? = nil, financialAccount: String, hostedRegulatoryReceiptURL: String? = nil, id: String, linkedFlows: TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows, isLivemode: Bool, metadata: [String: String], object: Object, originPaymentMethod: String, originPaymentMethodDetails: InboundTransfers? = nil, isReturned: Bool? = nil, statementDescriptor: String, status: Status, statusTransitions: TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions, transaction: Transaction? = nil) {
        self.amount = amount
        self.isCancelable = isCancelable
        self.created = created
        self.currency = currency
        self.description = description
        self.failureDetails = failureDetails
        self.financialAccount = financialAccount
        self.hostedRegulatoryReceiptURL = hostedRegulatoryReceiptURL
        self.id = id
        self.linkedFlows = linkedFlows
        self.isLivemode = isLivemode
        self.metadata = metadata
        self.object = object
        self.originPaymentMethod = originPaymentMethod
        self.originPaymentMethodDetails = originPaymentMethodDetails
        self.isReturned = isReturned
        self.statementDescriptor = statementDescriptor
        self.status = status
        self.statusTransitions = statusTransitions
        self.transaction = transaction
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.isCancelable = try values.decode(Bool.self, forKey: "cancelable")
        self.created = try values.decode(Int.self, forKey: "created")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.failureDetails = try values.decodeIfPresent(TreasuryInboundTransfersResourceFailureDetails.self, forKey: "failure_details")
        self.financialAccount = try values.decode(String.self, forKey: "financial_account")
        self.hostedRegulatoryReceiptURL = try values.decodeIfPresent(String.self, forKey: "hosted_regulatory_receipt_url")
        self.id = try values.decode(String.self, forKey: "id")
        self.linkedFlows = try values.decode(TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows.self, forKey: "linked_flows")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.metadata = try values.decode([String: String].self, forKey: "metadata")
        self.object = try values.decode(Object.self, forKey: "object")
        self.originPaymentMethod = try values.decode(String.self, forKey: "origin_payment_method")
        self.originPaymentMethodDetails = try values.decodeIfPresent(InboundTransfers.self, forKey: "origin_payment_method_details")
        self.isReturned = try values.decodeIfPresent(Bool.self, forKey: "returned")
        self.statementDescriptor = try values.decode(String.self, forKey: "statement_descriptor")
        self.status = try values.decode(Status.self, forKey: "status")
        self.statusTransitions = try values.decode(TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions.self, forKey: "status_transitions")
        self.transaction = try values.decodeIfPresent(Transaction.self, forKey: "transaction")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encode(isCancelable, forKey: "cancelable")
        try values.encode(created, forKey: "created")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(failureDetails, forKey: "failure_details")
        try values.encode(financialAccount, forKey: "financial_account")
        try values.encodeIfPresent(hostedRegulatoryReceiptURL, forKey: "hosted_regulatory_receipt_url")
        try values.encode(id, forKey: "id")
        try values.encode(linkedFlows, forKey: "linked_flows")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(metadata, forKey: "metadata")
        try values.encode(object, forKey: "object")
        try values.encode(originPaymentMethod, forKey: "origin_payment_method")
        try values.encodeIfPresent(originPaymentMethodDetails, forKey: "origin_payment_method_details")
        try values.encodeIfPresent(isReturned, forKey: "returned")
        try values.encode(statementDescriptor, forKey: "statement_descriptor")
        try values.encode(status, forKey: "status")
        try values.encode(statusTransitions, forKey: "status_transitions")
        try values.encodeIfPresent(transaction, forKey: "transaction")
    }
}