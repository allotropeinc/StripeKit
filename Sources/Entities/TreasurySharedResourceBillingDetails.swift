// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TreasurySharedResourceBillingDetails: Codable {
    public var address: Address
    /// Email address.
    public var email: String?
    /// Full name.
    public var name: String?

    public init(address: Address, email: String? = nil, name: String? = nil) {
        self.address = address
        self.email = email
        self.name = name
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.address = try values.decode(Address.self, forKey: "address")
        self.email = try values.decodeIfPresent(String.self, forKey: "email")
        self.name = try values.decodeIfPresent(String.self, forKey: "name")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(address, forKey: "address")
        try values.encodeIfPresent(email, forKey: "email")
        try values.encodeIfPresent(name, forKey: "name")
    }
}
