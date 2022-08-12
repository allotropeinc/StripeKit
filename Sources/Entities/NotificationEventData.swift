// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct NotificationEventData: Codable {
    /// Object containing the API resource relevant to the event. For example, an `invoice.created` event will have a full [invoice object](https://stripe.com/docs/api#invoice_object) as the value of the object key.
    public var object: [String: AnyJSON]
    /// Object containing the names of the attributes that have changed, and their previous values (sent along only with *.updated events).
    public var previousAttributes: [String: AnyJSON]?

    public init(object: [String: AnyJSON], previousAttributes: [String: AnyJSON]? = nil) {
        self.object = object
        self.previousAttributes = previousAttributes
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.object = try values.decode([String: AnyJSON].self, forKey: "object")
        self.previousAttributes = try values.decodeIfPresent([String: AnyJSON].self, forKey: "previous_attributes")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(previousAttributes, forKey: "previous_attributes")
    }
}
