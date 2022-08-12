// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_details_ach_debit
public struct PaymentMethodDetailsAchDebit: Codable {
    /// Type of entity that holds the account. This can be either `individual` or `company`.
    public var accountHolderType: AccountHolderType?
    /// Name of the bank associated with the bank account.
    public var bankName: String?
    /// Two-letter ISO code representing the country the bank account is located in.
    public var country: String?
    /// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    public var fingerprint: String?
    /// Last four digits of the bank account number.
    public var last4: String?
    /// Routing transit number of the bank account.
    public var routingNumber: String?

    /// Type of entity that holds the account. This can be either `individual` or `company`.
    public enum AccountHolderType: String, Codable, CaseIterable {
        case company
        case individual
    }

    public init(accountHolderType: AccountHolderType? = nil, bankName: String? = nil, country: String? = nil, fingerprint: String? = nil, last4: String? = nil, routingNumber: String? = nil) {
        self.accountHolderType = accountHolderType
        self.bankName = bankName
        self.country = country
        self.fingerprint = fingerprint
        self.last4 = last4
        self.routingNumber = routingNumber
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.accountHolderType = try values.decodeIfPresent(AccountHolderType.self, forKey: "account_holder_type")
        self.bankName = try values.decodeIfPresent(String.self, forKey: "bank_name")
        self.country = try values.decodeIfPresent(String.self, forKey: "country")
        self.fingerprint = try values.decodeIfPresent(String.self, forKey: "fingerprint")
        self.last4 = try values.decodeIfPresent(String.self, forKey: "last4")
        self.routingNumber = try values.decodeIfPresent(String.self, forKey: "routing_number")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(accountHolderType, forKey: "account_holder_type")
        try values.encodeIfPresent(bankName, forKey: "bank_name")
        try values.encodeIfPresent(country, forKey: "country")
        try values.encodeIfPresent(fingerprint, forKey: "fingerprint")
        try values.encodeIfPresent(last4, forKey: "last4")
        try values.encodeIfPresent(routingNumber, forKey: "routing_number")
    }
}
