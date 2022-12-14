// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceTypeP24: Codable {
    public var reference: String?

    public init(reference: String? = nil) {
        self.reference = reference
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.reference = try values.decodeIfPresent(String.self, forKey: "reference")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(reference, forKey: "reference")
    }
}
