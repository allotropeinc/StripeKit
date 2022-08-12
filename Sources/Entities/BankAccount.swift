// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// These bank accounts are payment methods on `Customer` objects.
/// 
/// On the other hand [External Accounts](https://stripe.com/docs/api#external_accounts) are transfer
/// destinations on `Account` objects for [Custom accounts](https://stripe.com/docs/connect/custom-accounts).
/// They can be bank accounts or debit cards as well, and are documented in the links above.
/// 
/// Related guide: [Bank Debits and Transfers](https://stripe.com/docs/payments/bank-debits-transfers).
public struct BankAccount: Codable {
    /// The ID of the account that the bank account is associated with.
    public var account: Account?
    /// The name of the person or business that owns the bank account.
    public var accountHolderName: String?
    /// The type of entity that holds the account. This can be either `individual` or `company`.
    public var accountHolderType: String?
    /// The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
    public var accountType: String?
    /// A set of available payout methods for this bank account. Only values from this set should be passed as the `method` when creating a payout.
    public var availablePayoutMethods: [AvailablePayoutMethod]?
    /// Name of the bank associated with the routing number (e.g., `WELLS FARGO`).
    public var bankName: String?
    /// Two-letter ISO code representing the country the bank account is located in.
    public var country: String
    /// Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
    public var currency: String
    /// The ID of the customer that the bank account is associated with.
    public var customer: Customer?
    /// Whether this bank account is the default external account for its currency.
    public var isDefaultForCurrency: Bool?
    /// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    public var fingerprint: String?
    /// Unique identifier for the object.
    public var id: String
    /// The last four digits of the bank account number.
    public var last4: String
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public var metadata: [String: String]?
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// The routing transit number for the bank account.
    public var routingNumber: String?
    /// For bank accounts, possible values are `new`, `validated`, `verified`, `verification_failed`, or `errored`. A bank account that hasn't had any activity or validation performed is `new`. If Stripe can determine that the bank account exists, its status will be `validated`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be `verified`. If the verification failed for any reason, such as microdeposit failure, the status will be `verification_failed`. If a transfer sent to this bank account fails, we'll set the status to `errored` and will not continue to send transfers until the bank details are updated.
    /// 
    /// For external accounts, possible values are `new` and `errored`. Validations aren't run against external accounts because they're only used for payouts. This means the other statuses don't apply. If a transfer fails, the status is set to `errored` and transfers are stopped until account details are updated.
    public var status: String

    /// The ID of the account that the bank account is associated with.
    public final class Account: Codable {
        public let string: String?
        /// This is an object representing a Stripe account. You can retrieve it to see
        /// properties on the account like its current e-mail address or if the account is
        /// enabled yet to make live charges.
        /// 
        /// Some properties, marked below, are available only to platforms that want to
        /// [create and manage Express or Custom accounts](https://stripe.com/docs/connect/accounts).
        public let account: StripeKit.Account?

        public init(string: String? = nil, account: StripeKit.Account? = nil) {
            self.string = string
            self.account = account
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.account = try? container.decode(StripeKit.Account.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = account { try container.encode(value) }
        }
    }

    public enum AvailablePayoutMethod: String, Codable, CaseIterable {
        case instant
        case standard
    }

    /// The ID of the customer that the bank account is associated with.
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

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case bankAccount = "bank_account"
    }

    public init(account: Account? = nil, accountHolderName: String? = nil, accountHolderType: String? = nil, accountType: String? = nil, availablePayoutMethods: [AvailablePayoutMethod]? = nil, bankName: String? = nil, country: String, currency: String, customer: Customer? = nil, isDefaultForCurrency: Bool? = nil, fingerprint: String? = nil, id: String, last4: String, metadata: [String: String]? = nil, object: Object, routingNumber: String? = nil, status: String) {
        self.account = account
        self.accountHolderName = accountHolderName
        self.accountHolderType = accountHolderType
        self.accountType = accountType
        self.availablePayoutMethods = availablePayoutMethods
        self.bankName = bankName
        self.country = country
        self.currency = currency
        self.customer = customer
        self.isDefaultForCurrency = isDefaultForCurrency
        self.fingerprint = fingerprint
        self.id = id
        self.last4 = last4
        self.metadata = metadata
        self.object = object
        self.routingNumber = routingNumber
        self.status = status
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.account = try values.decodeIfPresent(Account.self, forKey: "account")
        self.accountHolderName = try values.decodeIfPresent(String.self, forKey: "account_holder_name")
        self.accountHolderType = try values.decodeIfPresent(String.self, forKey: "account_holder_type")
        self.accountType = try values.decodeIfPresent(String.self, forKey: "account_type")
        self.availablePayoutMethods = try values.decodeIfPresent([AvailablePayoutMethod].self, forKey: "available_payout_methods")
        self.bankName = try values.decodeIfPresent(String.self, forKey: "bank_name")
        self.country = try values.decode(String.self, forKey: "country")
        self.currency = try values.decode(String.self, forKey: "currency")
        self.customer = try values.decodeIfPresent(Customer.self, forKey: "customer")
        self.isDefaultForCurrency = try values.decodeIfPresent(Bool.self, forKey: "default_for_currency")
        self.fingerprint = try values.decodeIfPresent(String.self, forKey: "fingerprint")
        self.id = try values.decode(String.self, forKey: "id")
        self.last4 = try values.decode(String.self, forKey: "last4")
        self.metadata = try values.decodeIfPresent([String: String].self, forKey: "metadata")
        self.object = try values.decode(Object.self, forKey: "object")
        self.routingNumber = try values.decodeIfPresent(String.self, forKey: "routing_number")
        self.status = try values.decode(String.self, forKey: "status")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(account, forKey: "account")
        try values.encodeIfPresent(accountHolderName, forKey: "account_holder_name")
        try values.encodeIfPresent(accountHolderType, forKey: "account_holder_type")
        try values.encodeIfPresent(accountType, forKey: "account_type")
        try values.encodeIfPresent(availablePayoutMethods, forKey: "available_payout_methods")
        try values.encodeIfPresent(bankName, forKey: "bank_name")
        try values.encode(country, forKey: "country")
        try values.encode(currency, forKey: "currency")
        try values.encodeIfPresent(customer, forKey: "customer")
        try values.encodeIfPresent(isDefaultForCurrency, forKey: "default_for_currency")
        try values.encodeIfPresent(fingerprint, forKey: "fingerprint")
        try values.encode(id, forKey: "id")
        try values.encode(last4, forKey: "last4")
        try values.encodeIfPresent(metadata, forKey: "metadata")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(routingNumber, forKey: "routing_number")
        try values.encode(status, forKey: "status")
    }
}