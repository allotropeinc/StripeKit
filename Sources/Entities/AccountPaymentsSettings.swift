// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AccountPaymentsSettings: Codable {
    /// The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge.
    public var statementDescriptor: String?
    /// The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only)
    public var statementDescriptorKana: String?
    /// The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only)
    public var statementDescriptorKanji: String?
    /// The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
    public var statementDescriptorPrefixKana: String?
    /// The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
    public var statementDescriptorPrefixKanji: String?

    public init(statementDescriptor: String? = nil, statementDescriptorKana: String? = nil, statementDescriptorKanji: String? = nil, statementDescriptorPrefixKana: String? = nil, statementDescriptorPrefixKanji: String? = nil) {
        self.statementDescriptor = statementDescriptor
        self.statementDescriptorKana = statementDescriptorKana
        self.statementDescriptorKanji = statementDescriptorKanji
        self.statementDescriptorPrefixKana = statementDescriptorPrefixKana
        self.statementDescriptorPrefixKanji = statementDescriptorPrefixKanji
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.statementDescriptor = try values.decodeIfPresent(String.self, forKey: "statement_descriptor")
        self.statementDescriptorKana = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_kana")
        self.statementDescriptorKanji = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_kanji")
        self.statementDescriptorPrefixKana = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_prefix_kana")
        self.statementDescriptorPrefixKanji = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_prefix_kanji")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(statementDescriptor, forKey: "statement_descriptor")
        try values.encodeIfPresent(statementDescriptorKana, forKey: "statement_descriptor_kana")
        try values.encodeIfPresent(statementDescriptorKanji, forKey: "statement_descriptor_kanji")
        try values.encodeIfPresent(statementDescriptorPrefixKana, forKey: "statement_descriptor_prefix_kana")
        try values.encodeIfPresent(statementDescriptorPrefixKanji, forKey: "statement_descriptor_prefix_kanji")
    }
}
