// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_details_us_bank_account
public struct PaymentMethodDetailsUsBankAccount: Codable {
    /// Account holder type: individual or company.
    public var accountHolderType: AccountHolderType?
    /// Account type: checkings or savings. Defaults to checking if omitted.
    public var accountType: AccountType?
    /// Name of the bank associated with the bank account.
    public var bankName: String?
    /// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    public var fingerprint: String?
    /// Last four digits of the bank account number.
    public var last4: String?
    /// Routing number of the bank account.
    public var routingNumber: String?

    /// Account holder type: individual or company.
    public enum AccountHolderType: String, Codable, CaseIterable {
        case company
        case individual
    }

    /// Account type: checkings or savings. Defaults to checking if omitted.
    public enum AccountType: String, Codable, CaseIterable {
        case checking
        case savings
    }

    public init(accountHolderType: AccountHolderType? = nil, accountType: AccountType? = nil, bankName: String? = nil, fingerprint: String? = nil, last4: String? = nil, routingNumber: String? = nil) {
        self.accountHolderType = accountHolderType
        self.accountType = accountType
        self.bankName = bankName
        self.fingerprint = fingerprint
        self.last4 = last4
        self.routingNumber = routingNumber
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.accountHolderType = try values.decodeIfPresent(AccountHolderType.self, forKey: "account_holder_type")
        self.accountType = try values.decodeIfPresent(AccountType.self, forKey: "account_type")
        self.bankName = try values.decodeIfPresent(String.self, forKey: "bank_name")
        self.fingerprint = try values.decodeIfPresent(String.self, forKey: "fingerprint")
        self.last4 = try values.decodeIfPresent(String.self, forKey: "last4")
        self.routingNumber = try values.decodeIfPresent(String.self, forKey: "routing_number")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(accountHolderType, forKey: "account_holder_type")
        try values.encodeIfPresent(accountType, forKey: "account_type")
        try values.encodeIfPresent(bankName, forKey: "bank_name")
        try values.encodeIfPresent(fingerprint, forKey: "fingerprint")
        try values.encodeIfPresent(last4, forKey: "last4")
        try values.encodeIfPresent(routingNumber, forKey: "routing_number")
    }
}
