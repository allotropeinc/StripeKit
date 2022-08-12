// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Setup_attempt_payment_method_details_card
public struct SetupAttemptPaymentMethodDetailsCard: Codable {
    /// Populated if this authorization used 3D Secure authentication.
    public var threeDSecure: ThreeDSecureDetails?

    public init(threeDSecure: ThreeDSecureDetails? = nil) {
        self.threeDSecure = threeDSecure
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.threeDSecure = try values.decodeIfPresent(ThreeDSecureDetails.self, forKey: "three_d_secure")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(threeDSecure, forKey: "three_d_secure")
    }
}