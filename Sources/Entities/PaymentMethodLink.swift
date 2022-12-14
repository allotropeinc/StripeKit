// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_link
public struct PaymentMethodLink: Codable {
    /// Account owner's email address.
    public var email: String?
    /// Token used for persistent Link logins.
    public var persistentToken: String?

    public init(email: String? = nil, persistentToken: String? = nil) {
        self.email = email
        self.persistentToken = persistentToken
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.email = try values.decodeIfPresent(String.self, forKey: "email")
        self.persistentToken = try values.decodeIfPresent(String.self, forKey: "persistent_token")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(email, forKey: "email")
        try values.encodeIfPresent(persistentToken, forKey: "persistent_token")
    }
}
