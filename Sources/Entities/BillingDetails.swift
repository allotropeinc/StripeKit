// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Billing_details
public struct BillingDetails: Codable {
    /// Billing address.
    public var address: Address?
    /// Email address.
    public var email: String?
    /// Full name.
    public var name: String?
    /// Billing phone number (including extension).
    public var phone: String?

    public init(address: Address? = nil, email: String? = nil, name: String? = nil, phone: String? = nil) {
        self.address = address
        self.email = email
        self.name = name
        self.phone = phone
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.address = try values.decodeIfPresent(Address.self, forKey: "address")
        self.email = try values.decodeIfPresent(String.self, forKey: "email")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
        self.phone = try values.decodeIfPresent(String.self, forKey: "phone")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(address, forKey: "address")
        try values.encodeIfPresent(email, forKey: "email")
        try values.encodeIfPresent(name, forKey: "name")
        try values.encodeIfPresent(phone, forKey: "phone")
    }
}
