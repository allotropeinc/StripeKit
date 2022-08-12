// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BankConnectionsResourceOwnershipRefresh: Codable {
    /// The time at which the last refresh attempt was initiated. Measured in seconds since the Unix epoch.
    public var lastAttemptedAt: Int
    /// The status of the last refresh attempt.
    public var status: Status

    /// The status of the last refresh attempt.
    public enum Status: String, Codable, CaseIterable {
        case failed
        case pending
        case succeeded
    }

    public init(lastAttemptedAt: Int, status: Status) {
        self.lastAttemptedAt = lastAttemptedAt
        self.status = status
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.lastAttemptedAt = try values.decode(Int.self, forKey: "last_attempted_at")
        self.status = try values.decode(Status.self, forKey: "status")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(lastAttemptedAt, forKey: "last_attempted_at")
        try values.encode(status, forKey: "status")
    }
}
