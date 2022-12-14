// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PaymentIntentNextActionCardAwaitNotification: Codable {
    /// The time that payment will be attempted. If customer approval is required, they need to provide approval before this time.
    public var chargeAttemptAt: Int?
    /// For payments greater than INR 15000, the customer must provide explicit approval of the payment with their bank. For payments of lower amount, no customer action is required.
    public var isCustomerApprovalRequired: Bool?

    public init(chargeAttemptAt: Int? = nil, isCustomerApprovalRequired: Bool? = nil) {
        self.chargeAttemptAt = chargeAttemptAt
        self.isCustomerApprovalRequired = isCustomerApprovalRequired
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.chargeAttemptAt = try values.decodeIfPresent(Int.self, forKey: "charge_attempt_at")
        self.isCustomerApprovalRequired = try values.decodeIfPresent(Bool.self, forKey: "customer_approval_required")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(chargeAttemptAt, forKey: "charge_attempt_at")
        try values.encodeIfPresent(isCustomerApprovalRequired, forKey: "customer_approval_required")
    }
}
