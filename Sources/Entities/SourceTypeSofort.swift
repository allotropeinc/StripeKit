// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceTypeSofort: Codable {
    public var bankCode: String?
    public var bankName: String?
    public var bic: String?
    public var country: String?
    public var ibanLast4: String?
    public var preferredLanguage: String?
    public var statementDescriptor: String?

    public init(bankCode: String? = nil, bankName: String? = nil, bic: String? = nil, country: String? = nil, ibanLast4: String? = nil, preferredLanguage: String? = nil, statementDescriptor: String? = nil) {
        self.bankCode = bankCode
        self.bankName = bankName
        self.bic = bic
        self.country = country
        self.ibanLast4 = ibanLast4
        self.preferredLanguage = preferredLanguage
        self.statementDescriptor = statementDescriptor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.bankCode = try values.decodeIfPresent(String.self, forKey: "bank_code")
        self.bankName = try values.decodeIfPresent(String.self, forKey: "bank_name")
        self.bic = try values.decodeIfPresent(String.self, forKey: "bic")
        self.country = try values.decodeIfPresent(String.self, forKey: "country")
        self.ibanLast4 = try values.decodeIfPresent(String.self, forKey: "iban_last4")
        self.preferredLanguage = try values.decodeIfPresent(String.self, forKey: "preferred_language")
        self.statementDescriptor = try values.decodeIfPresent(String.self, forKey: "statement_descriptor")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(bankCode, forKey: "bank_code")
        try values.encodeIfPresent(bankName, forKey: "bank_name")
        try values.encodeIfPresent(bic, forKey: "bic")
        try values.encodeIfPresent(country, forKey: "country")
        try values.encodeIfPresent(ibanLast4, forKey: "iban_last4")
        try values.encodeIfPresent(preferredLanguage, forKey: "preferred_language")
        try values.encodeIfPresent(statementDescriptor, forKey: "statement_descriptor")
    }
}