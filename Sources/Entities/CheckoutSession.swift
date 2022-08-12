// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Session
///
/// A Checkout Session represents your customer's session as they pay for
/// one-time purchases or subscriptions through [Checkout](https://stripe.com/docs/payments/checkout)
/// or [Payment Links](https://stripe.com/docs/payments/payment-links). We recommend creating a
/// new Session each time your customer attempts to pay.
/// 
/// Once payment is successful, the Checkout Session will contain a reference
/// to the [Customer](https://stripe.com/docs/api/customers), and either the successful
/// [PaymentIntent](https://stripe.com/docs/api/payment_intents) or an active
/// [Subscription](https://stripe.com/docs/api/subscriptions).
/// 
/// You can create a Checkout Session on your server and pass its ID to the
/// client to begin Checkout.
/// 
/// Related guide: [Checkout Server Quickstart](https://stripe.com/docs/payments/checkout/api).
public struct CheckoutSession: Codable {
    /// When set, provides configuration for actions to take if this Checkout Session expires.
    public var afterExpiration: PaymentPagesCheckoutSessionAfterExpiration?
    /// Enables user redeemable promotion codes.
    public var allowPromotionCodes: Bool?
    /// Total of all items before discounts or taxes are applied.
    public var amountSubtotal: Int?
    /// Total of all items after discounts and taxes are applied.
    public var amountTotal: Int?
    /// PaymentPagesCheckoutSessionAutomaticTax
    public var automaticTax: PaymentPagesCheckoutSessionAutomaticTax
    /// Describes whether Checkout should collect the customer's billing address.
    public var billingAddressCollection: BillingAddressCollection?
    /// The URL the customer will be directed to if they decide to cancel payment and return to your website.
    public var cancelURL: String
    /// A unique string to reference the Checkout Session. This can be a
    /// customer ID, a cart ID, or similar, and can be used to reconcile the
    /// Session with your internal systems.
    public var clientReferenceID: String?
    /// Results of `consent_collection` for this session.
    public var consent: PaymentPagesCheckoutSessionConsent?
    /// When set, provides configuration for the Checkout Session to gather active consent from customers.
    public var consentCollection: PaymentPagesCheckoutSessionConsentCollection?
    /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    public var currency: String?
    /// The ID of the customer for this Session.
    /// For Checkout Sessions in `payment` or `subscription` mode, Checkout
    /// will create a new customer object based on information provided
    /// during the payment flow unless an existing customer was provided when
    /// the Session was created.
    public var customer: Customer?
    /// Configure whether a Checkout Session creates a Customer when the Checkout Session completes.
    public var customerCreation: CustomerCreation?
    /// The customer details including the customer's tax exempt status and the customer's tax IDs. Only the customer's email is present on Sessions in `setup` mode.
    public var customerDetails: PaymentPagesCheckoutSessionCustomerDetails?
    /// If provided, this value will be used when the Customer object is created.
    /// If not provided, customers will be asked to enter their email address.
    /// Use this parameter to prefill customer data if you already have an email
    /// on file. To access information about the customer once the payment flow is
    /// complete, use the `customer` attribute.
    public var customerEmail: String?
    /// The timestamp at which the Checkout Session will expire.
    public var expiresAt: Int
    /// Unique identifier for the object. Used to pass to `redirectToCheckout`
    /// in Stripe.js.
    public var id: String
    /// PaymentPagesCheckoutSessionListLineItems
    ///
    /// The line items purchased by the customer.
    public var lineItems: LineItems?
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
    public var locale: Locale?
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public var metadata: [String: String]?
    /// The mode of the Checkout Session.
    public var mode: Mode
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// The ID of the PaymentIntent for Checkout Sessions in `payment` mode.
    public var paymentIntent: PaymentIntent?
    /// The ID of the Payment Link that created this Session.
    public var paymentLink: PaymentLink?
    /// Configure whether a Checkout Session should collect a payment method.
    public var paymentMethodCollection: PaymentMethodCollection?
    /// Payment-method-specific configuration for the PaymentIntent or SetupIntent of this CheckoutSession.
    public var paymentMethodOptions: CheckoutSessionPaymentMethodOptions?
    /// A list of the types of payment methods (e.g. card) this Checkout
    /// Session is allowed to accept.
    public var paymentMethodTypes: [String]
    /// The payment status of the Checkout Session, one of `paid`, `unpaid`, or `no_payment_required`.
    /// You can use this value to decide when to fulfill your customer's order.
    public var paymentStatus: PaymentStatus
    /// PaymentPagesCheckoutSessionPhoneNumberCollection
    public var phoneNumberCollection: PaymentPagesCheckoutSessionPhoneNumberCollection?
    /// The ID of the original expired Checkout Session that triggered the recovery flow.
    public var recoveredFrom: String?
    /// The ID of the SetupIntent for Checkout Sessions in `setup` mode.
    public var setupIntent: SetupIntent?
    /// When set, provides configuration for Checkout to collect a shipping address from a customer.
    public var shippingAddressCollection: PaymentPagesCheckoutSessionShippingAddressCollection?
    /// The details of the customer cost of shipping, including the customer chosen ShippingRate.
    public var shippingCost: PaymentPagesCheckoutSessionShippingCost?
    /// Shipping information for this Checkout Session.
    public var shippingDetails: Shipping?
    /// The shipping rate options applied to this Session.
    public var shippingOptions: [PaymentPagesCheckoutSessionShippingOption]
    /// The status of the Checkout Session, one of `open`, `complete`, or `expired`.
    public var status: Status?
    /// Describes the type of transaction being performed by Checkout in order to customize
    /// relevant text on the page, such as the submit button. `submit_type` can only be
    /// specified on Checkout Sessions in `payment` mode, but not Checkout Sessions
    /// in `subscription` or `setup` mode.
    public var submitType: SubmitType?
    /// The ID of the subscription for Checkout Sessions in `subscription` mode.
    public var subscription: Subscription?
    /// The URL the customer will be directed to after the payment or
    /// subscription creation is successful.
    public var successURL: String
    /// PaymentPagesCheckoutSessionTaxIDCollection
    public var taxIDCollection: PaymentPagesCheckoutSessionTaxIDCollection?
    /// Tax and discount details for the computed total amount.
    public var totalDetails: PaymentPagesCheckoutSessionTotalDetails?
    /// The URL to the Checkout Session. Redirect customers to this URL to take them to Checkout. If you’re using [Custom Domains](https://stripe.com/docs/payments/checkout/custom-domains), the URL will use your subdomain. Otherwise, it’ll use `checkout.stripe.com.`
    public var url: String?

    /// Describes whether Checkout should collect the customer's billing address.
    public enum BillingAddressCollection: String, Codable, CaseIterable {
        case auto
        case required
    }

    /// The ID of the customer for this Session.
    /// For Checkout Sessions in `payment` or `subscription` mode, Checkout
    /// will create a new customer object based on information provided
    /// during the payment flow unless an existing customer was provided when
    /// the Session was created.
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

    /// Configure whether a Checkout Session creates a Customer when the Checkout Session completes.
    public enum CustomerCreation: String, Codable, CaseIterable {
        case always
        case ifRequired = "if_required"
    }

    /// PaymentPagesCheckoutSessionListLineItems
    ///
    /// The line items purchased by the customer.
    public struct LineItems: Codable {
        /// Details about each object.
        public var data: [Item]
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

        public init(data: [Item], hasMore: Bool, object: Object, url: String) {
            self.data = data
            self.hasMore = hasMore
            self.object = object
            self.url = url
        }

        public init(from decoder: Decoder) throws {
            let values = try decoder.container(keyedBy: StringCodingKey.self)
            self.data = try values.decode([Item].self, forKey: "data")
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

    /// The IETF language tag of the locale Checkout is displayed in. If blank or `auto`, the browser's locale is used.
    public enum Locale: String, Codable, CaseIterable {
        case auto
        case bg
        case cs
        case da
        case de
        case el
        case en
        case enGB = "en-GB"
        case es
        case es419 = "es-419"
        case et
        case fi
        case fil
        case fr
        case frCA = "fr-CA"
        case hr
        case hu
        case id
        case it
        case ja
        case ko
        case lt
        case lv
        case ms
        case mt
        case nb
        case nl
        case pl
        case pt
        case ptBR = "pt-BR"
        case ro
        case ru
        case sk
        case sl
        case sv
        case th
        case tr
        case vi
        case zh
        case zhHK = "zh-HK"
        case zhTW = "zh-TW"
    }

    /// The mode of the Checkout Session.
    public enum Mode: String, Codable, CaseIterable {
        case payment
        case setup
        case subscription
    }

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case checkoutSession = "checkout.session"
    }

    /// The ID of the PaymentIntent for Checkout Sessions in `payment` mode.
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

    /// The ID of the Payment Link that created this Session.
    public final class PaymentLink: Codable {
        public let string: String?
        /// A payment link is a shareable URL that will take your customers to a hosted payment page. A payment link can be shared and used multiple times.
        /// 
        /// When a customer opens a payment link it will open a new [checkout session](https://stripe.com/docs/api/checkout/sessions) to render the payment page. You can use [checkout session events](https://stripe.com/docs/api/events/types#event_types-checkout.session.completed) to track payments through payment links.
        /// 
        /// Related guide: [Payment Links API](https://stripe.com/docs/payments/payment-links/api)
        public let paymentLink: StripeKit.PaymentLink?

        public init(string: String? = nil, paymentLink: StripeKit.PaymentLink? = nil) {
            self.string = string
            self.paymentLink = paymentLink
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.paymentLink = try? container.decode(StripeKit.PaymentLink.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = paymentLink { try container.encode(value) }
        }
    }

    /// Configure whether a Checkout Session should collect a payment method.
    public enum PaymentMethodCollection: String, Codable, CaseIterable {
        case always
        case ifRequired = "if_required"
    }

    /// The payment status of the Checkout Session, one of `paid`, `unpaid`, or `no_payment_required`.
    /// You can use this value to decide when to fulfill your customer's order.
    public enum PaymentStatus: String, Codable, CaseIterable {
        case noPaymentRequired = "no_payment_required"
        case paid
        case unpaid
    }

    /// The ID of the SetupIntent for Checkout Sessions in `setup` mode.
    public final class SetupIntent: Codable {
        public let string: String?
        /// A SetupIntent guides you through the process of setting up and saving a customer's payment credentials for future payments.
        /// For example, you could use a SetupIntent to set up and save your customer's card without immediately collecting a payment.
        /// Later, you can use [PaymentIntents](https://stripe.com/docs/api#payment_intents) to drive the payment flow.
        /// 
        /// Create a SetupIntent as soon as you're ready to collect your customer's payment credentials.
        /// Do not maintain long-lived, unconfirmed SetupIntents as they may no longer be valid.
        /// The SetupIntent then transitions through multiple [statuses](https://stripe.com/docs/payments/intents#intent-statuses) as it guides
        /// you through the setup process.
        /// 
        /// Successful SetupIntents result in payment credentials that are optimized for future payments.
        /// For example, cardholders in [certain regions](/guides/strong-customer-authentication) may need to be run through
        /// [Strong Customer Authentication](https://stripe.com/docs/strong-customer-authentication) at the time of payment method collection
        /// in order to streamline later [off-session payments](https://stripe.com/docs/payments/setup-intents).
        /// If the SetupIntent is used with a [Customer](https://stripe.com/docs/api#setup_intent_object-customer), upon success,
        /// it will automatically attach the resulting payment method to that Customer.
        /// We recommend using SetupIntents or [setup_future_usage](https://stripe.com/docs/api#payment_intent_object-setup_future_usage) on
        /// PaymentIntents to save payment methods in order to prevent saving invalid or unoptimized payment methods.
        /// 
        /// By using SetupIntents, you ensure that your customers experience the minimum set of required friction,
        /// even as regulations change over time.
        /// 
        /// Related guide: [Setup Intents API](https://stripe.com/docs/payments/setup-intents).
        public let setupIntent: StripeKit.SetupIntent?

        public init(string: String? = nil, setupIntent: StripeKit.SetupIntent? = nil) {
            self.string = string
            self.setupIntent = setupIntent
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.setupIntent = try? container.decode(StripeKit.SetupIntent.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = setupIntent { try container.encode(value) }
        }
    }

    /// The status of the Checkout Session, one of `open`, `complete`, or `expired`.
    public enum Status: String, Codable, CaseIterable {
        case complete
        case expired
        case `open`
    }

    /// Describes the type of transaction being performed by Checkout in order to customize
    /// relevant text on the page, such as the submit button. `submit_type` can only be
    /// specified on Checkout Sessions in `payment` mode, but not Checkout Sessions
    /// in `subscription` or `setup` mode.
    public enum SubmitType: String, Codable, CaseIterable {
        case auto
        case book
        case donate
        case pay
    }

    /// The ID of the subscription for Checkout Sessions in `subscription` mode.
    public final class Subscription: Codable {
        public let string: String?
        /// Subscriptions allow you to charge a customer on a recurring basis.
        /// 
        /// Related guide: [Creating Subscriptions](https://stripe.com/docs/billing/subscriptions/creating).
        public let subscription: StripeKit.Subscription?

        public init(string: String? = nil, subscription: StripeKit.Subscription? = nil) {
            self.string = string
            self.subscription = subscription
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.subscription = try? container.decode(StripeKit.Subscription.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = subscription { try container.encode(value) }
        }
    }

    public init(afterExpiration: PaymentPagesCheckoutSessionAfterExpiration? = nil, allowPromotionCodes: Bool? = nil, amountSubtotal: Int? = nil, amountTotal: Int? = nil, automaticTax: PaymentPagesCheckoutSessionAutomaticTax, billingAddressCollection: BillingAddressCollection? = nil, cancelURL: String, clientReferenceID: String? = nil, consent: PaymentPagesCheckoutSessionConsent? = nil, consentCollection: PaymentPagesCheckoutSessionConsentCollection? = nil, currency: String? = nil, customer: Customer? = nil, customerCreation: CustomerCreation? = nil, customerDetails: PaymentPagesCheckoutSessionCustomerDetails? = nil, customerEmail: String? = nil, expiresAt: Int, id: String, lineItems: LineItems? = nil, isLivemode: Bool, locale: Locale? = nil, metadata: [String: String]? = nil, mode: Mode, object: Object, paymentIntent: PaymentIntent? = nil, paymentLink: PaymentLink? = nil, paymentMethodCollection: PaymentMethodCollection? = nil, paymentMethodOptions: CheckoutSessionPaymentMethodOptions? = nil, paymentMethodTypes: [String], paymentStatus: PaymentStatus, phoneNumberCollection: PaymentPagesCheckoutSessionPhoneNumberCollection? = nil, recoveredFrom: String? = nil, setupIntent: SetupIntent? = nil, shippingAddressCollection: PaymentPagesCheckoutSessionShippingAddressCollection? = nil, shippingCost: PaymentPagesCheckoutSessionShippingCost? = nil, shippingDetails: Shipping? = nil, shippingOptions: [PaymentPagesCheckoutSessionShippingOption], status: Status? = nil, submitType: SubmitType? = nil, subscription: Subscription? = nil, successURL: String, taxIDCollection: PaymentPagesCheckoutSessionTaxIDCollection? = nil, totalDetails: PaymentPagesCheckoutSessionTotalDetails? = nil, url: String? = nil) {
        self.afterExpiration = afterExpiration
        self.allowPromotionCodes = allowPromotionCodes
        self.amountSubtotal = amountSubtotal
        self.amountTotal = amountTotal
        self.automaticTax = automaticTax
        self.billingAddressCollection = billingAddressCollection
        self.cancelURL = cancelURL
        self.clientReferenceID = clientReferenceID
        self.consent = consent
        self.consentCollection = consentCollection
        self.currency = currency
        self.customer = customer
        self.customerCreation = customerCreation
        self.customerDetails = customerDetails
        self.customerEmail = customerEmail
        self.expiresAt = expiresAt
        self.id = id
        self.lineItems = lineItems
        self.isLivemode = isLivemode
        self.locale = locale
        self.metadata = metadata
        self.mode = mode
        self.object = object
        self.paymentIntent = paymentIntent
        self.paymentLink = paymentLink
        self.paymentMethodCollection = paymentMethodCollection
        self.paymentMethodOptions = paymentMethodOptions
        self.paymentMethodTypes = paymentMethodTypes
        self.paymentStatus = paymentStatus
        self.phoneNumberCollection = phoneNumberCollection
        self.recoveredFrom = recoveredFrom
        self.setupIntent = setupIntent
        self.shippingAddressCollection = shippingAddressCollection
        self.shippingCost = shippingCost
        self.shippingDetails = shippingDetails
        self.shippingOptions = shippingOptions
        self.status = status
        self.submitType = submitType
        self.subscription = subscription
        self.successURL = successURL
        self.taxIDCollection = taxIDCollection
        self.totalDetails = totalDetails
        self.url = url
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.afterExpiration = try values.decodeIfPresent(PaymentPagesCheckoutSessionAfterExpiration.self, forKey: "after_expiration")
        self.allowPromotionCodes = try values.decodeIfPresent(Bool.self, forKey: "allow_promotion_codes")
        self.amountSubtotal = try values.decodeIfPresent(Int.self, forKey: "amount_subtotal")
        self.amountTotal = try values.decodeIfPresent(Int.self, forKey: "amount_total")
        self.automaticTax = try values.decode(PaymentPagesCheckoutSessionAutomaticTax.self, forKey: "automatic_tax")
        self.billingAddressCollection = try values.decodeIfPresent(BillingAddressCollection.self, forKey: "billing_address_collection")
        self.cancelURL = try values.decode(String.self, forKey: "cancel_url")
        self.clientReferenceID = try values.decodeIfPresent(String.self, forKey: "client_reference_id")
        self.consent = try values.decodeIfPresent(PaymentPagesCheckoutSessionConsent.self, forKey: "consent")
        self.consentCollection = try values.decodeIfPresent(PaymentPagesCheckoutSessionConsentCollection.self, forKey: "consent_collection")
        self.currency = try values.decodeIfPresent(String.self, forKey: "currency")
        self.customer = try values.decodeIfPresent(Customer.self, forKey: "customer")
        self.customerCreation = try values.decodeIfPresent(CustomerCreation.self, forKey: "customer_creation")
        self.customerDetails = try values.decodeIfPresent(PaymentPagesCheckoutSessionCustomerDetails.self, forKey: "customer_details")
        self.customerEmail = try values.decodeIfPresent(String.self, forKey: "customer_email")
        self.expiresAt = try values.decode(Int.self, forKey: "expires_at")
        self.id = try values.decode(String.self, forKey: "id")
        self.lineItems = try values.decodeIfPresent(LineItems.self, forKey: "line_items")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.locale = try values.decodeIfPresent(Locale.self, forKey: "locale")
        self.metadata = try values.decodeIfPresent([String: String].self, forKey: "metadata")
        self.mode = try values.decode(Mode.self, forKey: "mode")
        self.object = try values.decode(Object.self, forKey: "object")
        self.paymentIntent = try values.decodeIfPresent(PaymentIntent.self, forKey: "payment_intent")
        self.paymentLink = try values.decodeIfPresent(PaymentLink.self, forKey: "payment_link")
        self.paymentMethodCollection = try values.decodeIfPresent(PaymentMethodCollection.self, forKey: "payment_method_collection")
        self.paymentMethodOptions = try values.decodeIfPresent(CheckoutSessionPaymentMethodOptions.self, forKey: "payment_method_options")
        self.paymentMethodTypes = try values.decode([String].self, forKey: "payment_method_types")
        self.paymentStatus = try values.decode(PaymentStatus.self, forKey: "payment_status")
        self.phoneNumberCollection = try values.decodeIfPresent(PaymentPagesCheckoutSessionPhoneNumberCollection.self, forKey: "phone_number_collection")
        self.recoveredFrom = try values.decodeIfPresent(String.self, forKey: "recovered_from")
        self.setupIntent = try values.decodeIfPresent(SetupIntent.self, forKey: "setup_intent")
        self.shippingAddressCollection = try values.decodeIfPresent(PaymentPagesCheckoutSessionShippingAddressCollection.self, forKey: "shipping_address_collection")
        self.shippingCost = try values.decodeIfPresent(PaymentPagesCheckoutSessionShippingCost.self, forKey: "shipping_cost")
        self.shippingDetails = try values.decodeIfPresent(Shipping.self, forKey: "shipping_details")
        self.shippingOptions = try values.decode([PaymentPagesCheckoutSessionShippingOption].self, forKey: "shipping_options")
        self.status = try values.decodeIfPresent(Status.self, forKey: "status")
        self.submitType = try values.decodeIfPresent(SubmitType.self, forKey: "submit_type")
        self.subscription = try values.decodeIfPresent(Subscription.self, forKey: "subscription")
        self.successURL = try values.decode(String.self, forKey: "success_url")
        self.taxIDCollection = try values.decodeIfPresent(PaymentPagesCheckoutSessionTaxIDCollection.self, forKey: "tax_id_collection")
        self.totalDetails = try values.decodeIfPresent(PaymentPagesCheckoutSessionTotalDetails.self, forKey: "total_details")
        self.url = try values.decodeIfPresent(String.self, forKey: "url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(afterExpiration, forKey: "after_expiration")
        try values.encodeIfPresent(allowPromotionCodes, forKey: "allow_promotion_codes")
        try values.encodeIfPresent(amountSubtotal, forKey: "amount_subtotal")
        try values.encodeIfPresent(amountTotal, forKey: "amount_total")
        try values.encode(automaticTax, forKey: "automatic_tax")
        try values.encodeIfPresent(billingAddressCollection, forKey: "billing_address_collection")
        try values.encode(cancelURL, forKey: "cancel_url")
        try values.encodeIfPresent(clientReferenceID, forKey: "client_reference_id")
        try values.encodeIfPresent(consent, forKey: "consent")
        try values.encodeIfPresent(consentCollection, forKey: "consent_collection")
        try values.encodeIfPresent(currency, forKey: "currency")
        try values.encodeIfPresent(customer, forKey: "customer")
        try values.encodeIfPresent(customerCreation, forKey: "customer_creation")
        try values.encodeIfPresent(customerDetails, forKey: "customer_details")
        try values.encodeIfPresent(customerEmail, forKey: "customer_email")
        try values.encode(expiresAt, forKey: "expires_at")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(lineItems, forKey: "line_items")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encodeIfPresent(locale, forKey: "locale")
        try values.encodeIfPresent(metadata, forKey: "metadata")
        try values.encode(mode, forKey: "mode")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(paymentIntent, forKey: "payment_intent")
        try values.encodeIfPresent(paymentLink, forKey: "payment_link")
        try values.encodeIfPresent(paymentMethodCollection, forKey: "payment_method_collection")
        try values.encodeIfPresent(paymentMethodOptions, forKey: "payment_method_options")
        try values.encode(paymentMethodTypes, forKey: "payment_method_types")
        try values.encode(paymentStatus, forKey: "payment_status")
        try values.encodeIfPresent(phoneNumberCollection, forKey: "phone_number_collection")
        try values.encodeIfPresent(recoveredFrom, forKey: "recovered_from")
        try values.encodeIfPresent(setupIntent, forKey: "setup_intent")
        try values.encodeIfPresent(shippingAddressCollection, forKey: "shipping_address_collection")
        try values.encodeIfPresent(shippingCost, forKey: "shipping_cost")
        try values.encodeIfPresent(shippingDetails, forKey: "shipping_details")
        try values.encode(shippingOptions, forKey: "shipping_options")
        try values.encodeIfPresent(status, forKey: "status")
        try values.encodeIfPresent(submitType, forKey: "submit_type")
        try values.encodeIfPresent(subscription, forKey: "subscription")
        try values.encode(successURL, forKey: "success_url")
        try values.encodeIfPresent(taxIDCollection, forKey: "tax_id_collection")
        try values.encodeIfPresent(totalDetails, forKey: "total_details")
        try values.encodeIfPresent(url, forKey: "url")
    }
}
