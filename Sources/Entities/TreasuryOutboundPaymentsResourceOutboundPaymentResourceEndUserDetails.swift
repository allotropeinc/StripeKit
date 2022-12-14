// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails: Codable {
    /// IP address of the user initiating the OutboundPayment. Set if `present` is set to `true`. IP address collection is required for risk and compliance reasons. This will be used to help determine if the OutboundPayment is authorized or should be blocked.
    public var ipAddress: String?
    /// `true`` if the OutboundPayment creation request is being made on behalf of an end user by a platform. Otherwise, `false`.
    public var isPresent: Bool

    public init(ipAddress: String? = nil, isPresent: Bool) {
        self.ipAddress = ipAddress
        self.isPresent = isPresent
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.ipAddress = try values.decodeIfPresent(String.self, forKey: "ip_address")
        self.isPresent = try values.decode(Bool.self, forKey: "present")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(ipAddress, forKey: "ip_address")
        try values.encode(isPresent, forKey: "present")
    }
}
