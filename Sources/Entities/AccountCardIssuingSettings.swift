// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AccountCardIssuingSettings: Codable {
    /// CardIssuingAccountTermsOfService
    public var tosAcceptance: CardIssuingAccountTermsOfService?

    public init(tosAcceptance: CardIssuingAccountTermsOfService? = nil) {
        self.tosAcceptance = tosAcceptance
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.tosAcceptance = try values.decodeIfPresent(CardIssuingAccountTermsOfService.self, forKey: "tos_acceptance")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(tosAcceptance, forKey: "tos_acceptance")
    }
}