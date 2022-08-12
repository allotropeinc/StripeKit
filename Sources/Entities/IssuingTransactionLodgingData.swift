// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingTransactionLodgingData: Codable {
    /// The time of checking into the lodging.
    public var checkInAt: Int?
    /// The number of nights stayed at the lodging.
    public var nights: Int?

    public init(checkInAt: Int? = nil, nights: Int? = nil) {
        self.checkInAt = checkInAt
        self.nights = nights
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.checkInAt = try values.decodeIfPresent(Int.self, forKey: "check_in_at")
        self.nights = try values.decodeIfPresent(Int.self, forKey: "nights")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(checkInAt, forKey: "check_in_at")
        try values.encodeIfPresent(nights, forKey: "nights")
    }
}
