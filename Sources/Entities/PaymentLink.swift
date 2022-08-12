// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A payment link is a shareable URL that will take your customers to a hosted payment page. A payment link can be shared and used multiple times.
/// 
/// When a customer opens a payment link it will open a new [checkout session](https://stripe.com/docs/api/checkout/sessions) to render the payment page. You can use [checkout session events](https://stripe.com/docs/api/events/types#event_types-checkout.session.completed) to track payments through payment links.
/// 
/// Related guide: [Payment Links API](https://stripe.com/docs/payments/payment-links/api)
public struct PaymentLink: Codable {
    /// Whether the payment link's `url` is active. If `false`, customers visiting the URL will be shown a page saying that the link has been deactivated.
    public var isActive: Bool
    /// PaymentLinksResourceAfterCompletion
    public var afterCompletion: PaymentLinksResourceAfterCompletion
    /// Whether user redeemable promotion codes are enabled.
    public var allowPromotionCodes: Bool
    /// The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
    public var applicationFeeAmount: Int?
    /// This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account.
    public var applicationFeePercent: Double?
    /// PaymentLinksResourceAutomaticTax
    public var automaticTax: PaymentLinksResourceAutomaticTax
    /// Configuration for collecting the customer's billing address.
    public var billingAddressCollection: BillingAddressCollection
    /// When set, provides configuration to gather active consent from customers.
    public var consentCollection: PaymentLinksResourceConsentCollection?
    /// Configuration for Customer creation during checkout.
    public var customerCreation: CustomerCreation
    /// Unique identifier for the object.
    public var id: String
    /// PaymentLinksResourceListLineItems
    ///
    /// The line items representing what is being sold.
    public var lineItems: LineItems?
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public var metadata: [String: String]
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    public var onBehalfOf: OnBehalfOf?
    /// Indicates the parameters to be passed to PaymentIntent creation during checkout.
    public var paymentIntentData: PaymentLinksResourcePaymentIntentData?
    /// Configuration for collecting a payment method during checkout.
    public var paymentMethodCollection: PaymentMethodCollection
    /// The list of payment method types that customers can use. When `null`, Stripe will dynamically show relevant payment methods you've enabled in your [payment method settings](https://dashboard.stripe.com/settings/payment_methods).
    public var paymentMethodTypes: [PaymentMethodType]?
    /// PaymentLinksResourcePhoneNumberCollection
    public var phoneNumberCollection: PaymentLinksResourcePhoneNumberCollection
    /// Configuration for collecting the customer's shipping address.
    public var shippingAddressCollection: PaymentLinksResourceShippingAddressCollection?
    /// The shipping rate options applied to the session.
    public var shippingOptions: [PaymentLinksResourceShippingOption]
    /// Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
    public var submitType: SubmitType
    /// When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
    public var subscriptionData: PaymentLinksResourceSubscriptionData?
    /// PaymentLinksResourceTaxIdCollection
    public var taxIDCollection: PaymentLinksResourceTaxIDCollection
    /// The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
    public var transferData: PaymentLinksResourceTransferData?
    /// The public URL that can be shared with customers.
    public var url: String

    /// Configuration for collecting the customer's billing address.
    public enum BillingAddressCollection: String, Codable, CaseIterable {
        case auto
        case required
    }

    /// Configuration for Customer creation during checkout.
    public enum CustomerCreation: String, Codable, CaseIterable {
        case always
        case ifRequired = "if_required"
    }

    /// PaymentLinksResourceListLineItems
    ///
    /// The line items representing what is being sold.
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

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case paymentLink = "payment_link"
    }

    /// The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
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

    /// Configuration for collecting a payment method during checkout.
    public enum PaymentMethodCollection: String, Codable, CaseIterable {
        case always
        case ifRequired = "if_required"
    }

    public enum PaymentMethodType: String, Codable, CaseIterable {
        case affirm
        case afterpayClearpay = "afterpay_clearpay"
        case alipay
        case auBecsDebit = "au_becs_debit"
        case bacsDebit = "bacs_debit"
        case bancontact
        case blik
        case boleto
        case card
        case eps
        case fpx
        case giropay
        case grabpay
        case ideal
        case klarna
        case konbini
        case oxxo
        case p24
        case paynow
        case promptpay
        case sepaDebit = "sepa_debit"
        case sofort
        case usBankAccount = "us_bank_account"
        case wechatPay = "wechat_pay"
    }

    /// Indicates the type of transaction being performed which customizes relevant text on the page, such as the submit button.
    public enum SubmitType: String, Codable, CaseIterable {
        case auto
        case book
        case donate
        case pay
    }

    public init(isActive: Bool, afterCompletion: PaymentLinksResourceAfterCompletion, allowPromotionCodes: Bool, applicationFeeAmount: Int? = nil, applicationFeePercent: Double? = nil, automaticTax: PaymentLinksResourceAutomaticTax, billingAddressCollection: BillingAddressCollection, consentCollection: PaymentLinksResourceConsentCollection? = nil, customerCreation: CustomerCreation, id: String, lineItems: LineItems? = nil, isLivemode: Bool, metadata: [String: String], object: Object, onBehalfOf: OnBehalfOf? = nil, paymentIntentData: PaymentLinksResourcePaymentIntentData? = nil, paymentMethodCollection: PaymentMethodCollection, paymentMethodTypes: [PaymentMethodType]? = nil, phoneNumberCollection: PaymentLinksResourcePhoneNumberCollection, shippingAddressCollection: PaymentLinksResourceShippingAddressCollection? = nil, shippingOptions: [PaymentLinksResourceShippingOption], submitType: SubmitType, subscriptionData: PaymentLinksResourceSubscriptionData? = nil, taxIDCollection: PaymentLinksResourceTaxIDCollection, transferData: PaymentLinksResourceTransferData? = nil, url: String) {
        self.isActive = isActive
        self.afterCompletion = afterCompletion
        self.allowPromotionCodes = allowPromotionCodes
        self.applicationFeeAmount = applicationFeeAmount
        self.applicationFeePercent = applicationFeePercent
        self.automaticTax = automaticTax
        self.billingAddressCollection = billingAddressCollection
        self.consentCollection = consentCollection
        self.customerCreation = customerCreation
        self.id = id
        self.lineItems = lineItems
        self.isLivemode = isLivemode
        self.metadata = metadata
        self.object = object
        self.onBehalfOf = onBehalfOf
        self.paymentIntentData = paymentIntentData
        self.paymentMethodCollection = paymentMethodCollection
        self.paymentMethodTypes = paymentMethodTypes
        self.phoneNumberCollection = phoneNumberCollection
        self.shippingAddressCollection = shippingAddressCollection
        self.shippingOptions = shippingOptions
        self.submitType = submitType
        self.subscriptionData = subscriptionData
        self.taxIDCollection = taxIDCollection
        self.transferData = transferData
        self.url = url
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isActive = try values.decode(Bool.self, forKey: "active")
        self.afterCompletion = try values.decode(PaymentLinksResourceAfterCompletion.self, forKey: "after_completion")
        self.allowPromotionCodes = try values.decode(Bool.self, forKey: "allow_promotion_codes")
        self.applicationFeeAmount = try values.decodeIfPresent(Int.self, forKey: "application_fee_amount")
        self.applicationFeePercent = try values.decodeIfPresent(Double.self, forKey: "application_fee_percent")
        self.automaticTax = try values.decode(PaymentLinksResourceAutomaticTax.self, forKey: "automatic_tax")
        self.billingAddressCollection = try values.decode(BillingAddressCollection.self, forKey: "billing_address_collection")
        self.consentCollection = try values.decodeIfPresent(PaymentLinksResourceConsentCollection.self, forKey: "consent_collection")
        self.customerCreation = try values.decode(CustomerCreation.self, forKey: "customer_creation")
        self.id = try values.decode(String.self, forKey: "id")
        self.lineItems = try values.decodeIfPresent(LineItems.self, forKey: "line_items")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.metadata = try values.decode([String: String].self, forKey: "metadata")
        self.object = try values.decode(Object.self, forKey: "object")
        self.onBehalfOf = try values.decodeIfPresent(OnBehalfOf.self, forKey: "on_behalf_of")
        self.paymentIntentData = try values.decodeIfPresent(PaymentLinksResourcePaymentIntentData.self, forKey: "payment_intent_data")
        self.paymentMethodCollection = try values.decode(PaymentMethodCollection.self, forKey: "payment_method_collection")
        self.paymentMethodTypes = try values.decodeIfPresent([PaymentMethodType].self, forKey: "payment_method_types")
        self.phoneNumberCollection = try values.decode(PaymentLinksResourcePhoneNumberCollection.self, forKey: "phone_number_collection")
        self.shippingAddressCollection = try values.decodeIfPresent(PaymentLinksResourceShippingAddressCollection.self, forKey: "shipping_address_collection")
        self.shippingOptions = try values.decode([PaymentLinksResourceShippingOption].self, forKey: "shipping_options")
        self.submitType = try values.decode(SubmitType.self, forKey: "submit_type")
        self.subscriptionData = try values.decodeIfPresent(PaymentLinksResourceSubscriptionData.self, forKey: "subscription_data")
        self.taxIDCollection = try values.decode(PaymentLinksResourceTaxIDCollection.self, forKey: "tax_id_collection")
        self.transferData = try values.decodeIfPresent(PaymentLinksResourceTransferData.self, forKey: "transfer_data")
        self.url = try values.decode(String.self, forKey: "url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(isActive, forKey: "active")
        try values.encode(afterCompletion, forKey: "after_completion")
        try values.encode(allowPromotionCodes, forKey: "allow_promotion_codes")
        try values.encodeIfPresent(applicationFeeAmount, forKey: "application_fee_amount")
        try values.encodeIfPresent(applicationFeePercent, forKey: "application_fee_percent")
        try values.encode(automaticTax, forKey: "automatic_tax")
        try values.encode(billingAddressCollection, forKey: "billing_address_collection")
        try values.encodeIfPresent(consentCollection, forKey: "consent_collection")
        try values.encode(customerCreation, forKey: "customer_creation")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(lineItems, forKey: "line_items")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(metadata, forKey: "metadata")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(onBehalfOf, forKey: "on_behalf_of")
        try values.encodeIfPresent(paymentIntentData, forKey: "payment_intent_data")
        try values.encode(paymentMethodCollection, forKey: "payment_method_collection")
        try values.encodeIfPresent(paymentMethodTypes, forKey: "payment_method_types")
        try values.encode(phoneNumberCollection, forKey: "phone_number_collection")
        try values.encodeIfPresent(shippingAddressCollection, forKey: "shipping_address_collection")
        try values.encode(shippingOptions, forKey: "shipping_options")
        try values.encode(submitType, forKey: "submit_type")
        try values.encodeIfPresent(subscriptionData, forKey: "subscription_data")
        try values.encode(taxIDCollection, forKey: "tax_id_collection")
        try values.encodeIfPresent(transferData, forKey: "transfer_data")
        try values.encode(url, forKey: "url")
    }
}
