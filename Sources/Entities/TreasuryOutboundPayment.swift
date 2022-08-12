// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// TreasuryOutboundPaymentsResourceOutboundPayment
///
/// Use OutboundPayments to send funds to another party's external bank account or [FinancialAccount](https://stripe.com/docs/api#financial_accounts). To send money to an account belonging to the same user, use an [OutboundTransfer](https://stripe.com/docs/api#outbound_transfers).
/// 
/// Simulate OutboundPayment state changes with the `/v1/test_helpers/treasury/outbound_payments` endpoints. These methods can only be called on test mode objects.
public final class TreasuryOutboundPayment: Codable {
    /// Amount (in cents) transferred.
    public let amount: Int
    /// Returns `true` if the object can be canceled, and `false` otherwise.
    public let isCancelable: Bool
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public let created: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public let currency: String
    /// ID of the [customer](https://stripe.com/docs/api/customers) to whom an OutboundPayment is sent.
    public let customer: String?
    /// An arbitrary string attached to the object. Often useful for displaying to users.
    public let description: String?
    /// The PaymentMethod via which an OutboundPayment is sent. This field can be empty if the OutboundPayment was created using `destination_payment_method_data`.
    public let destinationPaymentMethod: String?
    /// Details about the PaymentMethod for an OutboundPayment.
    public let destinationPaymentMethodDetails: OutboundPaymentsPaymentMethodDetails?
    /// Details about the end user.
    public let endUserDetails: TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails?
    /// The date when funds are expected to arrive in the destination account.
    public let expectedArrivalDate: Int
    /// The FinancialAccount that funds were pulled from.
    public let financialAccount: String
    /// A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
    public let hostedRegulatoryReceiptURL: String?
    /// Unique identifier for the object.
    public let id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public let isLivemode: Bool
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public let metadata: [String: String]
    /// String representing the object's type. Objects of the same type share the same value.
    public let object: Object
    /// Details about a returned OutboundPayment. Only set when the status is `returned`.
    public let returnedDetails: TreasuryOutboundPaymentsResourceReturnedStatus?
    /// The description that appears on the receiving end for an OutboundPayment (for example, bank statement for external bank transfer).
    public let statementDescriptor: String
    /// Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`. An OutboundPayment is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundPayment has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundPayment fails to arrive at its destination, its status will change to `returned`.
    public let status: Status
    /// TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions
    public let statusTransitions: TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions
    /// The Transaction associated with this object.
    public let transaction: Transaction

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case treasuryOutboundPayment = "treasury.outbound_payment"
    }

    /// Current status of the OutboundPayment: `processing`, `failed`, `posted`, `returned`, `canceled`. An OutboundPayment is `processing` if it has been created and is pending. The status changes to `posted` once the OutboundPayment has been "confirmed" and funds have left the account, or to `failed` or `canceled`. If an OutboundPayment fails to arrive at its destination, its status will change to `returned`.
    public enum Status: String, Codable, CaseIterable {
        case canceled
        case failed
        case posted
        case processing
        case returned
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

    public init(amount: Int, isCancelable: Bool, created: Int, currency: String, customer: String? = nil, description: String? = nil, destinationPaymentMethod: String? = nil, destinationPaymentMethodDetails: OutboundPaymentsPaymentMethodDetails? = nil, endUserDetails: TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails? = nil, expectedArrivalDate: Int, financialAccount: String, hostedRegulatoryReceiptURL: String? = nil, id: String, isLivemode: Bool, metadata: [String: String], object: Object, returnedDetails: TreasuryOutboundPaymentsResourceReturnedStatus? = nil, statementDescriptor: String, status: Status, statusTransitions: TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions, transaction: Transaction) {
        self.amount = amount
        self.isCancelable = isCancelable
        self.created = created
        self.currency = currency
        self.customer = customer
        self.description = description
        self.destinationPaymentMethod = destinationPaymentMethod
        self.destinationPaymentMethodDetails = destinationPaymentMethodDetails
        self.endUserDetails = endUserDetails
        self.expectedArrivalDate = expectedArrivalDate
        self.financialAccount = financialAccount
        self.hostedRegulatoryReceiptURL = hostedRegulatoryReceiptURL
        self.id = id
        self.isLivemode = isLivemode
        self.metadata = metadata
        self.object = object
        self.returnedDetails = returnedDetails
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
        self.customer = try values.decodeIfPresent(String.self, forKey: "customer")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.destinationPaymentMethod = try values.decodeIfPresent(String.self, forKey: "destination_payment_method")
        self.destinationPaymentMethodDetails = try values.decodeIfPresent(OutboundPaymentsPaymentMethodDetails.self, forKey: "destination_payment_method_details")
        self.endUserDetails = try values.decodeIfPresent(TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails.self, forKey: "end_user_details")
        self.expectedArrivalDate = try values.decode(Int.self, forKey: "expected_arrival_date")
        self.financialAccount = try values.decode(String.self, forKey: "financial_account")
        self.hostedRegulatoryReceiptURL = try values.decodeIfPresent(String.self, forKey: "hosted_regulatory_receipt_url")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.metadata = try values.decode([String: String].self, forKey: "metadata")
        self.object = try values.decode(Object.self, forKey: "object")
        self.returnedDetails = try values.decodeIfPresent(TreasuryOutboundPaymentsResourceReturnedStatus.self, forKey: "returned_details")
        self.statementDescriptor = try values.decode(String.self, forKey: "statement_descriptor")
        self.status = try values.decode(Status.self, forKey: "status")
        self.statusTransitions = try values.decode(TreasuryOutboundPaymentsResourceOutboundPaymentResourceStatusTransitions.self, forKey: "status_transitions")
        self.transaction = try values.decode(Transaction.self, forKey: "transaction")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encode(isCancelable, forKey: "cancelable")
        try values.encode(created, forKey: "created")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(customer, forKey: "customer")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encodeIfPresent(destinationPaymentMethod, forKey: "destination_payment_method")
        try values.encodeIfPresent(destinationPaymentMethodDetails, forKey: "destination_payment_method_details")
        try values.encodeIfPresent(endUserDetails, forKey: "end_user_details")
        try values.encode(expectedArrivalDate, forKey: "expected_arrival_date")
        try values.encode(financialAccount, forKey: "financial_account")
        try values.encodeIfPresent(hostedRegulatoryReceiptURL, forKey: "hosted_regulatory_receipt_url")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(metadata, forKey: "metadata")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(returnedDetails, forKey: "returned_details")
        try values.encode(statementDescriptor, forKey: "statement_descriptor")
        try values.encode(status, forKey: "status")
        try values.encode(statusTransitions, forKey: "status_transitions")
        try values.encode(transaction, forKey: "transaction")
    }
}