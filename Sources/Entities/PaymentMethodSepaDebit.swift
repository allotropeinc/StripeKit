// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_sepa_debit
public struct PaymentMethodSepaDebit: Codable {
    /// Bank code of bank associated with the bank account.
    public var bankCode: String?
    /// Branch code of bank associated with the bank account.
    public var branchCode: String?
    /// Two-letter ISO code representing the country the bank account is located in.
    public var country: String?
    /// Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    public var fingerprint: String?
    /// Information about the object that generated this PaymentMethod.
    public var generatedFrom: SepaDebitGeneratedFrom?
    /// Last four characters of the IBAN.
    public var last4: String?

    public init(bankCode: String? = nil, branchCode: String? = nil, country: String? = nil, fingerprint: String? = nil, generatedFrom: SepaDebitGeneratedFrom? = nil, last4: String? = nil) {
        self.bankCode = bankCode
        self.branchCode = branchCode
        self.country = country
        self.fingerprint = fingerprint
        self.generatedFrom = generatedFrom
        self.last4 = last4
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.bankCode = try values.decodeIfPresent(String.self, forKey: "bank_code")
        self.branchCode = try values.decodeIfPresent(String.self, forKey: "branch_code")
        self.country = try values.decodeIfPresent(String.self, forKey: "country")
        self.fingerprint = try values.decodeIfPresent(String.self, forKey: "fingerprint")
        self.generatedFrom = try values.decodeIfPresent(SepaDebitGeneratedFrom.self, forKey: "generated_from")
        self.last4 = try values.decodeIfPresent(String.self, forKey: "last4")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(bankCode, forKey: "bank_code")
        try values.encodeIfPresent(branchCode, forKey: "branch_code")
        try values.encodeIfPresent(country, forKey: "country")
        try values.encodeIfPresent(fingerprint, forKey: "fingerprint")
        try values.encodeIfPresent(generatedFrom, forKey: "generated_from")
        try values.encodeIfPresent(last4, forKey: "last4")
    }
}
