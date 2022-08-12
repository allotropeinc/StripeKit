// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct CustomerTax: Codable {
    /// Surfaces if automatic tax computation is possible given the current customer location information.
    public var automaticTax: AutomaticTax
    /// A recent IP address of the customer used for tax reporting and tax location inference.
    public var ipAddress: String?
    /// The customer's location as identified by Stripe Tax.
    public var location: CustomerTaxLocation?

    /// Surfaces if automatic tax computation is possible given the current customer location information.
    public enum AutomaticTax: String, Codable, CaseIterable {
        case failed
        case notCollecting = "not_collecting"
        case supported
        case unrecognizedLocation = "unrecognized_location"
    }

    public init(automaticTax: AutomaticTax, ipAddress: String? = nil, location: CustomerTaxLocation? = nil) {
        self.automaticTax = automaticTax
        self.ipAddress = ipAddress
        self.location = location
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.automaticTax = try values.decode(AutomaticTax.self, forKey: "automatic_tax")
        self.ipAddress = try values.decodeIfPresent(String.self, forKey: "ip_address")
        self.location = try values.decodeIfPresent(CustomerTaxLocation.self, forKey: "location")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(automaticTax, forKey: "automatic_tax")
        try values.encodeIfPresent(ipAddress, forKey: "ip_address")
        try values.encodeIfPresent(location, forKey: "location")
    }
}