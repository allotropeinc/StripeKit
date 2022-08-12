// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// An error response from the Stripe API
public struct Error: Codable {
    /// APIErrors
    public var error: APIErrors

    public init(error: APIErrors) {
        self.error = error
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.error = try values.decode(APIErrors.self, forKey: "error")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(error, forKey: "error")
    }
}