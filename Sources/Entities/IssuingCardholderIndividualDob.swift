// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingCardholderIndividualDob: Codable {
    /// The day of birth, between 1 and 31.
    public var day: Int?
    /// The month of birth, between 1 and 12.
    public var month: Int?
    /// The four-digit year of birth.
    public var year: Int?

    public init(day: Int? = nil, month: Int? = nil, year: Int? = nil) {
        self.day = day
        self.month = month
        self.year = year
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.day = try values.decodeIfPresent(Int.self, forKey: "day")
        self.month = try values.decodeIfPresent(Int.self, forKey: "month")
        self.year = try values.decodeIfPresent(Int.self, forKey: "year")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(day, forKey: "day")
        try values.encodeIfPresent(month, forKey: "month")
        try values.encodeIfPresent(year, forKey: "year")
    }
}
