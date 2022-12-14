// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// RadarRule
public struct Rule: Codable {
    /// The action taken on the payment.
    public var action: String
    /// Unique identifier for the object.
    public var id: String
    /// The predicate to evaluate the payment against.
    public var predicate: String

    public init(action: String, id: String, predicate: String) {
        self.action = action
        self.id = id
        self.predicate = predicate
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.action = try values.decode(String.self, forKey: "action")
        self.id = try values.decode(String.self, forKey: "id")
        self.predicate = try values.decode(String.self, forKey: "predicate")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(action, forKey: "action")
        try values.encode(id, forKey: "id")
        try values.encode(predicate, forKey: "predicate")
    }
}
