// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BankConnectionsResourceAccountholder: Codable {
    /// The ID of the Stripe account this account belongs to. Should only be present if `account_holder.type` is `account`.
    public var account: Account?
    /// ID of the Stripe customer this account belongs to. Present if and only if `account_holder.type` is `customer`.
    public var customer: Customer?
    /// Type of account holder that this account belongs to.
    public var type: `Type`

    /// The ID of the Stripe account this account belongs to. Should only be present if `account_holder.type` is `account`.
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

    /// ID of the Stripe customer this account belongs to. Present if and only if `account_holder.type` is `customer`.
    public final class Customer: Codable {
        public let string: String?
        /// This object represents a customer of your business. It lets you create recurring charges and track payments that belong to the same customer.
        /// 
        /// Related guide: [Save a card during payment](https://stripe.com/docs/payments/save-during-payment).
        public let customer: StripeKit.Customer?

        public init(string: String? = nil, customer: StripeKit.Customer? = nil) {
            self.string = string
            self.customer = customer
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.customer = try? container.decode(StripeKit.Customer.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = customer { try container.encode(value) }
        }
    }

    /// Type of account holder that this account belongs to.
    public enum `Type`: String, Codable, CaseIterable {
        case account
        case customer
    }

    public init(account: Account? = nil, customer: Customer? = nil, type: `Type`) {
        self.account = account
        self.customer = customer
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.account = try values.decodeIfPresent(Account.self, forKey: "account")
        self.customer = try values.decodeIfPresent(Customer.self, forKey: "customer")
        self.type = try values.decode(`Type`.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(account, forKey: "account")
        try values.encodeIfPresent(customer, forKey: "customer")
        try values.encode(type, forKey: "type")
    }
}