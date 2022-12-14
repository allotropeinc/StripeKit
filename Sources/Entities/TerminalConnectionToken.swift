// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// A Connection Token is used by the Stripe Terminal SDK to connect to a reader.
/// 
/// Related guide: [Fleet Management](https://stripe.com/docs/terminal/fleet/locations).
public struct TerminalConnectionToken: Codable {
    /// The id of the location that this connection token is scoped to. Note that location scoping only applies to internet-connected readers. For more details, see [the docs on scoping connection tokens](https://stripe.com/docs/terminal/fleet/locations#connection-tokens).
    public var location: String?
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// Your application should pass this token to the Stripe Terminal SDK.
    public var secret: String

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case terminalConnectionToken = "terminal.connection_token"
    }

    public init(location: String? = nil, object: Object, secret: String) {
        self.location = location
        self.object = object
        self.secret = secret
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.location = try values.decodeIfPresent(String.self, forKey: "location")
        self.object = try values.decode(Object.self, forKey: "object")
        self.secret = try values.decode(String.self, forKey: "secret")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(location, forKey: "location")
        try values.encode(object, forKey: "object")
        try values.encode(secret, forKey: "secret")
    }
}
