// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TreasuryReceivedDebitsResourceStatusTransitions: Codable {
    /// Timestamp describing when the DebitReversal changed status to `completed`.
    public var completedAt: Int?

    public init(completedAt: Int? = nil) {
        self.completedAt = completedAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.completedAt = try values.decodeIfPresent(Int.self, forKey: "completed_at")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(completedAt, forKey: "completed_at")
    }
}