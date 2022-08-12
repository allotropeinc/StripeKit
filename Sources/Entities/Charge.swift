// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// To charge a credit or a debit card, you create a `Charge` object. You can
/// retrieve and refund individual charges as well as list all charges. Charges
/// are identified by a unique, random ID.
/// 
/// Related guide: [Accept a payment with the Charges API](https://stripe.com/docs/payments/accept-a-payment-charges).
public struct Charge: Codable {
    /// Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    public var amount: Int
    /// Amount in %s captured (can be less than the amount attribute on the charge if a partial capture was made).
    public var amountCaptured: Int
    /// Amount in %s refunded (can be less than the amount attribute on the charge if a partial refund was issued).
    public var amountRefunded: Int
    /// ID of the Connect application that created the charge.
    public var application: Application?
    /// The application fee (if any) for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collecting-fees) for details.
    public var applicationFee: ApplicationFee?
    /// The amount of the application fee (if any) requested for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collecting-fees) for details.
    public var applicationFeeAmount: Int?
    /// ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
    public var balanceTransaction: BalanceTransaction?
    /// Billing_details
    public var billingDetails: BillingDetails
    /// The full statement descriptor that is passed to card networks, and that is displayed on your customers' credit card and bank statements. Allows you to see what the statement descriptor looks like after the static and dynamic portions are combined.
    public var calculatedStatementDescriptor: String?
    /// If the charge was created without capturing, this Boolean represents whether it is still uncaptured or has since been captured.
    public var isCaptured: Bool
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String
    /// ID of the customer this charge is for if one exists.
    public var customer: Customer?
    /// An arbitrary string attached to the object. Often useful for displaying to users.
    public var description: String?
    /// Whether the charge has been disputed.
    public var isDisputed: Bool
    /// ID of the balance transaction that describes the reversal of the balance on your account due to payment failure.
    public var failureBalanceTransaction: FailureBalanceTransaction?
    /// Error code explaining reason for charge failure if available (see [the errors section](https://stripe.com/docs/api#errors) for a list of codes).
    public var failureCode: String?
    /// Message to user further explaining reason for charge failure if available.
    public var failureMessage: String?
    /// Information on fraud assessments for the charge.
    public var fraudDetails: ChargeFraudDetails?
    /// Unique identifier for the object.
    public var id: String
    /// ID of the invoice this charge is for if one exists.
    public var invoice: Invoice?
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public var metadata: [String: String]
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// The account (if any) the charge was made on behalf of without triggering an automatic transfer. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers) for details.
    public var onBehalfOf: OnBehalfOf?
    /// Details about whether the payment was accepted, and why. See [understanding declines](https://stripe.com/docs/declines) for details.
    public var outcome: ChargeOutcome?
    /// `true` if the charge succeeded, or was successfully authorized for later capture.
    public var isPaid: Bool
    /// ID of the PaymentIntent associated with this charge, if one exists.
    public var paymentIntent: PaymentIntent?
    /// ID of the payment method used in this charge.
    public var paymentMethod: String?
    /// Details about the payment method at the time of the transaction.
    public var paymentMethodDetails: PaymentMethodDetails?
    /// RadarRadarOptions
    ///
    /// Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
    public var radarOptions: RadarRadarOptions?
    /// This is the email address that the receipt for this charge was sent to.
    public var receiptEmail: String?
    /// This is the transaction number that appears on email receipts sent for this charge. This attribute will be `null` until a receipt has been sent.
    public var receiptNumber: String?
    /// This is the URL to view the receipt for this charge. The receipt is kept up-to-date to the latest state of the charge, including any refunds. If the charge is for an Invoice, the receipt will be stylized as an Invoice receipt.
    public var receiptURL: String?
    /// Whether the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false.
    public var isRefunded: Bool
    /// RefundList
    ///
    /// A list of refunds that have been applied to the charge.
    public var refunds: Refunds
    /// ID of the review associated with this charge if one exists.
    public var review: Review?
    /// Shipping information for the charge.
    public var shipping: Shipping?
    /// The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
    public var sourceTransfer: SourceTransfer?
    /// For card charges, use `statement_descriptor_suffix` instead. Otherwise, you can use this value as the complete description of a charge on your customers’ statements. Must contain at least one letter, maximum 22 characters.
    public var statementDescriptor: String?
    /// Provides information about the charge that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
    public var statementDescriptorSuffix: String?
    /// The status of the payment is either `succeeded`, `pending`, or `failed`.
    public var status: Status
    /// ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter).
    public var transfer: Transfer?
    /// An optional dictionary including the account to automatically transfer to as part of a destination charge. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
    public var transferData: ChargeTransferData?
    /// A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers#transfer-options) for details.
    public var transferGroup: String?

    /// ID of the Connect application that created the charge.
    public final class Application: Codable {
        public let string: String?
        public let application: StripeKit.Application?

        public init(string: String? = nil, application: StripeKit.Application? = nil) {
            self.string = string
            self.application = application
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.application = try? container.decode(StripeKit.Application.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = application { try container.encode(value) }
        }
    }

    /// The application fee (if any) for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collecting-fees) for details.
    public final class ApplicationFee: Codable {
        public let string: String?
        /// PlatformFee
        public let applicationFee: StripeKit.ApplicationFee?

        public init(string: String? = nil, applicationFee: StripeKit.ApplicationFee? = nil) {
            self.string = string
            self.applicationFee = applicationFee
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.applicationFee = try? container.decode(StripeKit.ApplicationFee.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = applicationFee { try container.encode(value) }
        }
    }

    /// ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
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

    /// ID of the customer this charge is for if one exists.
    public final class Customer: Codable {
        public let string: String?
        /// This object represents a customer of your business. It lets you create recurring charges and track payments that belong to the same customer.
        /// 
        /// Related guide: [Save a card during payment](https://stripe.com/docs/payments/save-during-payment).
        public let customer: StripeKit.Customer?
        public let deletedCustomer: DeletedCustomer?

        public init(string: String? = nil, customer: StripeKit.Customer? = nil, deletedCustomer: DeletedCustomer? = nil) {
            self.string = string
            self.customer = customer
            self.deletedCustomer = deletedCustomer
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.customer = try? container.decode(StripeKit.Customer.self)
            self.deletedCustomer = try? container.decode(DeletedCustomer.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = customer { try container.encode(value) }
            if let value = deletedCustomer { try container.encode(value) }
        }
    }

    /// ID of the balance transaction that describes the reversal of the balance on your account due to payment failure.
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

    /// ID of the invoice this charge is for if one exists.
    public final class Invoice: Codable {
        public let string: String?
        /// Invoices are statements of amounts owed by a customer, and are either
        /// generated one-off, or generated periodically from a subscription.
        /// 
        /// They contain [invoice items](https://stripe.com/docs/api#invoiceitems), and proration adjustments
        /// that may be caused by subscription upgrades/downgrades (if necessary).
        /// 
        /// If your invoice is configured to be billed through automatic charges,
        /// Stripe automatically finalizes your invoice and attempts payment. Note
        /// that finalizing the invoice,
        /// [when automatic](https://stripe.com/docs/billing/invoices/workflow/#auto_advance), does
        /// not happen immediately as the invoice is created. Stripe waits
        /// until one hour after the last webhook was successfully sent (or the last
        /// webhook timed out after failing). If you (and the platforms you may have
        /// connected to) have no webhooks configured, Stripe waits one hour after
        /// creation to finalize the invoice.
        /// 
        /// If your invoice is configured to be billed by sending an email, then based on your
        /// [email settings](https://dashboard.stripe.com/account/billing/automatic),
        /// Stripe will email the invoice to your customer and await payment. These
        /// emails can contain a link to a hosted page to pay the invoice.
        /// 
        /// Stripe applies any customer credit on the account before determining the
        /// amount due for the invoice (i.e., the amount that will be actually
        /// charged). If the amount due for the invoice is less than Stripe's [minimum allowed charge
        /// per currency](/docs/currencies#minimum-and-maximum-charge-amounts), the
        /// invoice is automatically marked paid, and we add the amount due to the
        /// customer's credit balance which is applied to the next invoice.
        /// 
        /// More details on the customer's credit balance are
        /// [here](https://stripe.com/docs/billing/customer/balance).
        /// 
        /// Related guide: [Send Invoices to Customers](https://stripe.com/docs/billing/invoices/sending).
        public let invoice: StripeKit.Invoice?

        public init(string: String? = nil, invoice: StripeKit.Invoice? = nil) {
            self.string = string
            self.invoice = invoice
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.invoice = try? container.decode(StripeKit.Invoice.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = invoice { try container.encode(value) }
        }
    }

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case charge
    }

    /// The account (if any) the charge was made on behalf of without triggering an automatic transfer. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers) for details.
    public struct OnBehalfOf: Codable {
        public var string: String?
        /// This is an object representing a Stripe account. You can retrieve it to see
        /// properties on the account like its current e-mail address or if the account is
        /// enabled yet to make live charges.
        /// 
        /// Some properties, marked below, are available only to platforms that want to
        /// [create and manage Express or Custom accounts](https://stripe.com/docs/connect/accounts).
        public var account: Account?

        public init(string: String? = nil, account: Account? = nil) {
            self.string = string
            self.account = account
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.account = try? container.decode(Account.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = account { try container.encode(value) }
        }
    }

    /// ID of the PaymentIntent associated with this charge, if one exists.
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

    /// RefundList
    ///
    /// A list of refunds that have been applied to the charge.
    public struct Refunds: Codable {
        /// Details about each object.
        public var data: [Refund]
        /// True if this list has another page of items after this one that can be fetched.
        public var hasMore: Bool
        /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
        public var object: Object
        /// The URL where this list can be accessed.
        public var url: String

        /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
        public enum Object: String, Codable, CaseIterable {
            case list
        }

        public init(data: [Refund], hasMore: Bool, object: Object, url: String) {
            self.data = data
            self.hasMore = hasMore
            self.object = object
            self.url = url
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.data = try values.decode([Refund].self, forKey: "data")
            self.hasMore = try values.decode(Bool.self, forKey: "has_more")
            self.object = try values.decode(Object.self, forKey: "object")
            self.url = try values.decode(String.self, forKey: "url")
        }

        public func encode(to encoder: Encoder) throws {
            var values = encoder.container(keyedBy: StringCodingKey.self)
            try values.encode(data, forKey: "data")
            try values.encode(hasMore, forKey: "has_more")
            try values.encode(object, forKey: "object")
            try values.encode(url, forKey: "url")
        }
    }

    /// ID of the review associated with this charge if one exists.
    public final class Review: Codable {
        public let string: String?
        /// RadarReview
        ///
        /// Reviews can be used to supplement automated fraud detection with human expertise.
        /// 
        /// Learn more about [Radar](/radar) and reviewing payments
        /// [here](https://stripe.com/docs/radar/reviews).
        public let review: StripeKit.Review?

        public init(string: String? = nil, review: StripeKit.Review? = nil) {
            self.string = string
            self.review = review
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.review = try? container.decode(StripeKit.Review.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = review { try container.encode(value) }
        }
    }

    /// The transfer ID which created this charge. Only present if the charge came from another Stripe account. [See the Connect documentation](https://stripe.com/docs/connect/destination-charges) for details.
    public struct SourceTransfer: Codable {
        public var string: String?
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
        public var transfer: Transfer?

        public init(string: String? = nil, transfer: Transfer? = nil) {
            self.string = string
            self.transfer = transfer
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.transfer = try? container.decode(Transfer.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = transfer { try container.encode(value) }
        }
    }

    /// The status of the payment is either `succeeded`, `pending`, or `failed`.
    public enum Status: String, Codable, CaseIterable {
        case failed
        case pending
        case succeeded
    }

    /// ID of the transfer to the `destination` account (only applicable if the charge was created using the `destination` parameter).
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

    public init(amount: Int, amountCaptured: Int, amountRefunded: Int, application: Application? = nil, applicationFee: ApplicationFee? = nil, applicationFeeAmount: Int? = nil, balanceTransaction: BalanceTransaction? = nil, billingDetails: BillingDetails, calculatedStatementDescriptor: String? = nil, isCaptured: Bool, created: Int, currency: String, customer: Customer? = nil, description: String? = nil, isDisputed: Bool, failureBalanceTransaction: FailureBalanceTransaction? = nil, failureCode: String? = nil, failureMessage: String? = nil, fraudDetails: ChargeFraudDetails? = nil, id: String, invoice: Invoice? = nil, isLivemode: Bool, metadata: [String: String], object: Object, onBehalfOf: OnBehalfOf? = nil, outcome: ChargeOutcome? = nil, isPaid: Bool, paymentIntent: PaymentIntent? = nil, paymentMethod: String? = nil, paymentMethodDetails: PaymentMethodDetails? = nil, radarOptions: RadarRadarOptions? = nil, receiptEmail: String? = nil, receiptNumber: String? = nil, receiptURL: String? = nil, isRefunded: Bool, refunds: Refunds, review: Review? = nil, shipping: Shipping? = nil, sourceTransfer: SourceTransfer? = nil, statementDescriptor: String? = nil, statementDescriptorSuffix: String? = nil, status: Status, transfer: Transfer? = nil, transferData: ChargeTransferData? = nil, transferGroup: String? = nil) {
        self.amount = amount
        self.amountCaptured = amountCaptured
        self.amountRefunded = amountRefunded
        self.application = application
        self.applicationFee = applicationFee
        self.applicationFeeAmount = applicationFeeAmount
        self.balanceTransaction = balanceTransaction
        self.billingDetails = billingDetails
        self.calculatedStatementDescriptor = calculatedStatementDescriptor
        self.isCaptured = isCaptured
        self.created = created
        self.currency = currency
        self.customer = customer
        self.description = description
        self.isDisputed = isDisputed
        self.failureBalanceTransaction = failureBalanceTransaction
        self.failureCode = failureCode
        self.failureMessage = failureMessage
        self.fraudDetails = fraudDetails
        self.id = id
        self.invoice = invoice
        self.isLivemode = isLivemode
        self.metadata = metadata
        self.object = object
        self.onBehalfOf = onBehalfOf
        self.outcome = outcome
        self.isPaid = isPaid
        self.paymentIntent = paymentIntent
        self.paymentMethod = paymentMethod
        self.paymentMethodDetails = paymentMethodDetails
        self.radarOptions = radarOptions
        self.receiptEmail = receiptEmail
        self.receiptNumber = receiptNumber
        self.receiptURL = receiptURL
        self.isRefunded = isRefunded
        self.refunds = refunds
        self.review = review
        self.shipping = shipping
        self.sourceTransfer = sourceTransfer
        self.statementDescriptor = statementDescriptor
        self.statementDescriptorSuffix = statementDescriptorSuffix
        self.status = status
        self.transfer = transfer
        self.transferData = transferData
        self.transferGroup = transferGroup
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amount = try values.decode(Int.self, forKey: "amount")
        self.amountCaptured = try values.decode(Int.self, forKey: "amount_captured")
        self.amountRefunded = try values.decode(Int.self, forKey: "amount_refunded")
        self.application = try values.decodeIfPresent(Application.self, forKey: "application")
        self.applicationFee = try values.decodeIfPresent(ApplicationFee.self, forKey: "application_fee")
        self.applicationFeeAmount = try values.decodeIfPresent(Int.self, forKey: "application_fee_amount")
        self.balanceTransaction = try values.decodeIfPresent(BalanceTransaction.self, forKey: "balance_transaction")
        self.billingDetails = try values.decode(BillingDetails.self, forKey: "billing_details")
        self.calculatedStatementDescriptor = try values.decodeIfPresent(String.self, forKey: "calculated_statement_descriptor")
        self.isCaptured = try values.decode(Bool.self, forKey: "captured")
        self.created = try values.decode(Int.self, forKey: "created")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.customer = try values.decodeIfPresent(Customer.self, forKey: "customer")
        self.description = try values.decodeIfPresent(String.self, forKey: "description")
        self.isDisputed = try values.decode(Bool.self, forKey: "disputed")
        self.failureBalanceTransaction = try values.decodeIfPresent(FailureBalanceTransaction.self, forKey: "failure_balance_transaction")
        self.failureCode = try values.decodeIfPresent(String.self, forKey: "failure_code")
        self.failureMessage = try values.decodeIfPresent(String.self, forKey: "failure_message")
        self.fraudDetails = try values.decodeIfPresent(ChargeFraudDetails.self, forKey: "fraud_details")
        self.id = try values.decode(String.self, forKey: "id")
        self.invoice = try values.decodeIfPresent(Invoice.self, forKey: "invoice")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.metadata = try values.decode([String: String].self, forKey: "metadata")
        self.object = try values.decode(Object.self, forKey: "object")
        self.onBehalfOf = try values.decodeIfPresent(OnBehalfOf.self, forKey: "on_behalf_of")
        self.outcome = try values.decodeIfPresent(ChargeOutcome.self, forKey: "outcome")
        self.isPaid = try values.decode(Bool.self, forKey: "paid")
        self.paymentIntent = try values.decodeIfPresent(PaymentIntent.self, forKey: "payment_intent")
        self.paymentMethod = try values.decodeIfPresent(String.self, forKey: "payment_method")
        self.paymentMethodDetails = try values.decodeIfPresent(PaymentMethodDetails.self, forKey: "payment_method_details")
        self.radarOptions = try values.decodeIfPresent(RadarRadarOptions.self, forKey: "radar_options")
        self.receiptEmail = try values.decodeIfPresent(String.self, forKey: "receipt_email")
        self.receiptNumber = try values.decodeIfPresent(String.self, forKey: "receipt_number")
        self.receiptURL = try values.decodeIfPresent(String.self, forKey: "receipt_url")
        self.isRefunded = try values.decode(Bool.self, forKey: "refunded")
        self.refunds = try values.decode(Refunds.self, forKey: "refunds")
        self.review = try values.decodeIfPresent(Review.self, forKey: "review")
        self.shipping = try values.decodeIfPresent(Shipping.self, forKey: "shipping")
        self.sourceTransfer = try values.decodeIfPresent(SourceTransfer.self, forKey: "source_transfer")
        self.statementDescriptor = try values.decodeIfPresent(String.self, forKey: "statement_descriptor")
        self.statementDescriptorSuffix = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_suffix")
        self.status = try values.decode(Status.self, forKey: "status")
        self.transfer = try values.decodeIfPresent(Transfer.self, forKey: "transfer")
        self.transferData = try values.decodeIfPresent(ChargeTransferData.self, forKey: "transfer_data")
        self.transferGroup = try values.decodeIfPresent(String.self, forKey: "transfer_group")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(amount, forKey: "amount")
        try values.encode(amountCaptured, forKey: "amount_captured")
        try values.encode(amountRefunded, forKey: "amount_refunded")
        try values.encodeIfPresent(application, forKey: "application")
        try values.encodeIfPresent(applicationFee, forKey: "application_fee")
        try values.encodeIfPresent(applicationFeeAmount, forKey: "application_fee_amount")
        try values.encodeIfPresent(balanceTransaction, forKey: "balance_transaction")
        try values.encode(billingDetails, forKey: "billing_details")
        try values.encodeIfPresent(calculatedStatementDescriptor, forKey: "calculated_statement_descriptor")
        try values.encode(isCaptured, forKey: "captured")
        try values.encode(created, forKey: "created")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(customer, forKey: "customer")
        try values.encodeIfPresent(description, forKey: "description")
        try values.encode(isDisputed, forKey: "disputed")
        try values.encodeIfPresent(failureBalanceTransaction, forKey: "failure_balance_transaction")
        try values.encodeIfPresent(failureCode, forKey: "failure_code")
        try values.encodeIfPresent(failureMessage, forKey: "failure_message")
        try values.encodeIfPresent(fraudDetails, forKey: "fraud_details")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(invoice, forKey: "invoice")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(metadata, forKey: "metadata")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(onBehalfOf, forKey: "on_behalf_of")
        try values.encodeIfPresent(outcome, forKey: "outcome")
        try values.encode(isPaid, forKey: "paid")
        try values.encodeIfPresent(paymentIntent, forKey: "payment_intent")
        try values.encodeIfPresent(paymentMethod, forKey: "payment_method")
        try values.encodeIfPresent(paymentMethodDetails, forKey: "payment_method_details")
        try values.encodeIfPresent(radarOptions, forKey: "radar_options")
        try values.encodeIfPresent(receiptEmail, forKey: "receipt_email")
        try values.encodeIfPresent(receiptNumber, forKey: "receipt_number")
        try values.encodeIfPresent(receiptURL, forKey: "receipt_url")
        try values.encode(isRefunded, forKey: "refunded")
        try values.encode(refunds, forKey: "refunds")
        try values.encodeIfPresent(review, forKey: "review")
        try values.encodeIfPresent(shipping, forKey: "shipping")
        try values.encodeIfPresent(sourceTransfer, forKey: "source_transfer")
        try values.encodeIfPresent(statementDescriptor, forKey: "statement_descriptor")
        try values.encodeIfPresent(statementDescriptorSuffix, forKey: "statement_descriptor_suffix")
        try values.encode(status, forKey: "status")
        try values.encodeIfPresent(transfer, forKey: "transfer")
        try values.encodeIfPresent(transferData, forKey: "transfer_data")
        try values.encodeIfPresent(transferGroup, forKey: "transfer_group")
    }
}
