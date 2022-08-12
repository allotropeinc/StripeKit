// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_us_bank_account
public struct PaymentMethodUsBankAccount: Codable {
    /// Account holder type: individual or company.
    public var accountHolderType: AccountHolderType?
    /// Account type: checkings or savings. Defaults to checking if omitted.
    public var accountType: AccountType?
    /// The name of the bank.
    public var bankName: String?
    /// The ID of the Financial Connections Account used to create the payment method.
    public var financialConnectionsAccount: String?
    /// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    public var fingerprint: String?
    /// Last four digits of the bank account number.
    public var last4: String?
    /// Contains information about US bank account networks that can be used.
    public var networks: UsBankAccountNetworks?
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

    public init(accountHolderType: AccountHolderType? = nil, accountType: AccountType? = nil, bankName: String? = nil, financialConnectionsAccount: String? = nil, fingerprint: String? = nil, last4: String? = nil, networks: UsBankAccountNetworks? = nil, routingNumber: String? = nil) {
        self.accountHolderType = accountHolderType
        self.accountType = accountType
        self.bankName = bankName
        self.financialConnectionsAccount = financialConnectionsAccount
        self.fingerprint = fingerprint
        self.last4 = last4
        self.networks = networks
        self.routingNumber = routingNumber
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.accountHolderType = try values.decodeIfPresent(AccountHolderType.self, forKey: "account_holder_type")
        self.accountType = try values.decodeIfPresent(AccountType.self, forKey: "account_type")
        self.bankName = try values.decodeIfPresent(String.self, forKey: "bank_name")
        self.financialConnectionsAccount = try values.decodeIfPresent(String.self, forKey: "financial_connections_account")
        self.fingerprint = try values.decodeIfPresent(String.self, forKey: "fingerprint")
        self.last4 = try values.decodeIfPresent(String.self, forKey: "last4")
        self.networks = try values.decodeIfPresent(UsBankAccountNetworks.self, forKey: "networks")
        self.routingNumber = try values.decodeIfPresent(String.self, forKey: "routing_number")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(accountHolderType, forKey: "account_holder_type")
        try values.encodeIfPresent(accountType, forKey: "account_type")
        try values.encodeIfPresent(bankName, forKey: "bank_name")
        try values.encodeIfPresent(financialConnectionsAccount, forKey: "financial_connections_account")
        try values.encodeIfPresent(fingerprint, forKey: "fingerprint")
        try values.encodeIfPresent(last4, forKey: "last4")
        try values.encodeIfPresent(networks, forKey: "networks")
        try values.encodeIfPresent(routingNumber, forKey: "routing_number")
    }
}