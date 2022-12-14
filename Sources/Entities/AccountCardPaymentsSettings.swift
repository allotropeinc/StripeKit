// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AccountCardPaymentsSettings: Codable {
    /// AccountDeclineChargeOn
    public var declineOn: AccountDeclineChargeOn?
    /// The default text that appears on credit card statements when a charge is made. This field prefixes any dynamic `statement_descriptor` specified on the charge. `statement_descriptor_prefix` is useful for maximizing descriptor space for the dynamic portion.
    public var statementDescriptorPrefix: String?
    /// The Kana variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kana` specified on the charge. `statement_descriptor_prefix_kana` is useful for maximizing descriptor space for the dynamic portion.
    public var statementDescriptorPrefixKana: String?
    /// The Kanji variation of the default text that appears on credit card statements when a charge is made (Japan only). This field prefixes any dynamic `statement_descriptor_suffix_kanji` specified on the charge. `statement_descriptor_prefix_kanji` is useful for maximizing descriptor space for the dynamic portion.
    public var statementDescriptorPrefixKanji: String?

    public init(declineOn: AccountDeclineChargeOn? = nil, statementDescriptorPrefix: String? = nil, statementDescriptorPrefixKana: String? = nil, statementDescriptorPrefixKanji: String? = nil) {
        self.declineOn = declineOn
        self.statementDescriptorPrefix = statementDescriptorPrefix
        self.statementDescriptorPrefixKana = statementDescriptorPrefixKana
        self.statementDescriptorPrefixKanji = statementDescriptorPrefixKanji
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.declineOn = try values.decodeIfPresent(AccountDeclineChargeOn.self, forKey: "decline_on")
        self.statementDescriptorPrefix = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_prefix")
        self.statementDescriptorPrefixKana = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_prefix_kana")
        self.statementDescriptorPrefixKanji = try values.decodeIfPresent(String.self, forKey: "statement_descriptor_prefix_kanji")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(declineOn, forKey: "decline_on")
        try values.encodeIfPresent(statementDescriptorPrefix, forKey: "statement_descriptor_prefix")
        try values.encodeIfPresent(statementDescriptorPrefixKana, forKey: "statement_descriptor_prefix_kana")
        try values.encodeIfPresent(statementDescriptorPrefixKanji, forKey: "statement_descriptor_prefix_kanji")
    }
}
