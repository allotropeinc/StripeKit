// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TreasuryReceivedCreditsResourceReversalDetails: Codable {
    /// Time before which a ReceivedCredit can be reversed.
    public var deadline: Int?
    /// Set if a ReceivedCredit cannot be reversed.
    public var restrictedReason: RestrictedReason?

    /// Set if a ReceivedCredit cannot be reversed.
    public enum RestrictedReason: String, Codable, CaseIterable {
        case alreadyReversed = "already_reversed"
        case deadlinePassed = "deadline_passed"
        case networkRestricted = "network_restricted"
        case other
        case sourceFlowRestricted = "source_flow_restricted"
    }

    public init(deadline: Int? = nil, restrictedReason: RestrictedReason? = nil) {
        self.deadline = deadline
        self.restrictedReason = restrictedReason
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.deadline = try values.decodeIfPresent(Int.self, forKey: "deadline")
        self.restrictedReason = try values.decodeIfPresent(RestrictedReason.self, forKey: "restricted_reason")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(deadline, forKey: "deadline")
        try values.encodeIfPresent(restrictedReason, forKey: "restricted_reason")
    }
}
