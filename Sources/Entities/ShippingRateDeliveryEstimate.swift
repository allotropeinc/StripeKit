// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct ShippingRateDeliveryEstimate: Codable {
    /// The upper bound of the estimated range. If empty, represents no upper bound i.e., infinite.
    public var maximum: ShippingRateDeliveryEstimateBound?
    /// The lower bound of the estimated range. If empty, represents no lower bound.
    public var minimum: ShippingRateDeliveryEstimateBound?

    public init(maximum: ShippingRateDeliveryEstimateBound? = nil, minimum: ShippingRateDeliveryEstimateBound? = nil) {
        self.maximum = maximum
        self.minimum = minimum
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.maximum = try values.decodeIfPresent(ShippingRateDeliveryEstimateBound.self, forKey: "maximum")
        self.minimum = try values.decodeIfPresent(ShippingRateDeliveryEstimateBound.self, forKey: "minimum")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(maximum, forKey: "maximum")
        try values.encodeIfPresent(minimum, forKey: "minimum")
    }
}
