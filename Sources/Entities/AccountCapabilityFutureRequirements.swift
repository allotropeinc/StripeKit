// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AccountCapabilityFutureRequirements: Codable {
    /// Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
    public var alternatives: [AccountRequirementsAlternative]?
    /// Date on which `future_requirements` merges with the main `requirements` hash and `future_requirements` becomes empty. After the transition, `currently_due` requirements may immediately become `past_due`, but the account may also be given a grace period depending on the capability's enablement state prior to transitioning.
    public var currentDeadline: Int?
    /// Fields that need to be collected to keep the capability enabled. If not collected by `future_requirements[current_deadline]`, these fields will transition to the main `requirements` hash.
    public var currentlyDue: [String]
    /// This is typed as a string for consistency with `requirements.disabled_reason`, but it safe to assume `future_requirements.disabled_reason` is empty because fields in `future_requirements` will never disable the account.
    public var disabledReason: String?
    /// Fields that are `currently_due` and need to be collected again because validation or verification failed.
    public var errors: [AccountRequirementsError]
    /// Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well.
    public var eventuallyDue: [String]
    /// Fields that weren't collected by `requirements.current_deadline`. These fields need to be collected to enable the capability on the account. New fields will never appear here; `future_requirements.past_due` will always be a subset of `requirements.past_due`.
    public var pastDue: [String]
    /// Fields that may become required depending on the results of verification or review. Will be an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due` or `currently_due`.
    public var pendingVerification: [String]

    public init(alternatives: [AccountRequirementsAlternative]? = nil, currentDeadline: Int? = nil, currentlyDue: [String], disabledReason: String? = nil, errors: [AccountRequirementsError], eventuallyDue: [String], pastDue: [String], pendingVerification: [String]) {
        self.alternatives = alternatives
        self.currentDeadline = currentDeadline
        self.currentlyDue = currentlyDue
        self.disabledReason = disabledReason
        self.errors = errors
        self.eventuallyDue = eventuallyDue
        self.pastDue = pastDue
        self.pendingVerification = pendingVerification
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.alternatives = try values.decodeIfPresent([AccountRequirementsAlternative].self, forKey: "alternatives")
        self.currentDeadline = try values.decodeIfPresent(Int.self, forKey: "current_deadline")
        self.currentlyDue = try values.decode([String].self, forKey: "currently_due")
        self.disabledReason = try values.decodeIfPresent(String.self, forKey: "disabled_reason")
        self.errors = try values.decode([AccountRequirementsError].self, forKey: "errors")
        self.eventuallyDue = try values.decode([String].self, forKey: "eventually_due")
        self.pastDue = try values.decode([String].self, forKey: "past_due")
        self.pendingVerification = try values.decode([String].self, forKey: "pending_verification")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(alternatives, forKey: "alternatives")
        try values.encodeIfPresent(currentDeadline, forKey: "current_deadline")
        try values.encode(currentlyDue, forKey: "currently_due")
        try values.encodeIfPresent(disabledReason, forKey: "disabled_reason")
        try values.encode(errors, forKey: "errors")
        try values.encode(eventuallyDue, forKey: "eventually_due")
        try values.encode(pastDue, forKey: "past_due")
        try values.encode(pendingVerification, forKey: "pending_verification")
    }
}
