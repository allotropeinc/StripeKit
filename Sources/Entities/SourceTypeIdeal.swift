// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceTypeIdeal: Codable {
    public var bank: String?
    public var bic: String?
    public var ibanLast4: String?
    public var statementDescriptor: String?

    public init(bank: String? = nil, bic: String? = nil, ibanLast4: String? = nil, statementDescriptor: String? = nil) {
        self.bank = bank
        self.bic = bic
        self.ibanLast4 = ibanLast4
        self.statementDescriptor = statementDescriptor
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.bank = try values.decodeIfPresent(String.self, forKey: "bank")
        self.bic = try values.decodeIfPresent(String.self, forKey: "bic")
        self.ibanLast4 = try values.decodeIfPresent(String.self, forKey: "iban_last4")
        self.statementDescriptor = try values.decodeIfPresent(String.self, forKey: "statement_descriptor")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(bank, forKey: "bank")
        try values.encodeIfPresent(bic, forKey: "bic")
        try values.encodeIfPresent(ibanLast4, forKey: "iban_last4")
        try values.encodeIfPresent(statementDescriptor, forKey: "statement_descriptor")
    }
}
