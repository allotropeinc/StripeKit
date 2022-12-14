// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AccountCapabilityRequirements: Codable {
    /// Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
    public var alternatives: [AccountRequirementsAlternative]?
    /// Date by which the fields in `currently_due` must be collected to keep the capability enabled for the account. These fields may disable the capability sooner if the next threshold is reached before they are collected.
    public var currentDeadline: Int?
    /// Fields that need to be collected to keep the capability enabled. If not collected by `current_deadline`, these fields appear in `past_due` as well, and the capability is disabled.
    public var currentlyDue: [String]
    /// If the capability is disabled, this string describes why. Can be `requirements.past_due`, `requirements.pending_verification`, `listed`, `platform_paused`, `rejected.fraud`, `rejected.listed`, `rejected.terms_of_service`, `rejected.other`, `under_review`, or `other`.
    /// 
    /// `rejected.unsupported_business` means that the account's business is not supported by the capability. For example, payment methods may restrict the businesses they support in their terms of service:
    /// 
    /// - [Afterpay Clearpay's terms of service](/afterpay-clearpay/legal#restricted-businesses)
    /// 
    /// If you believe that the rejection is in error, please contact support at https://support.stripe.com/contact/ for assistance.
    public var disabledReason: String?
    /// Fields that are `currently_due` and need to be collected again because validation or verification failed.
    public var errors: [AccountRequirementsError]
    /// Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
    public var eventuallyDue: [String]
    /// Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the capability on the account.
    public var pastDue: [String]
    /// Fields that may become required depending on the results of verification or review. Will be an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`.
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
