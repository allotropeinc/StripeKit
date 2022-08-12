// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DeletedPlan: Codable {
    /// Always true for a deleted object
    public var isDeleted: Bool
    /// Unique identifier for the object.
    public var id: String
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case plan
    }

    public init(isDeleted: Bool, id: String, object: Object) {
        self.isDeleted = isDeleted
        self.id = id
        self.object = object
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isDeleted = try values.decode(Bool.self, forKey: "deleted")
        self.id = try values.decode(String.self, forKey: "id")
        self.object = try values.decode(Object.self, forKey: "object")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(isDeleted, forKey: "deleted")
        try values.encode(id, forKey: "id")
        try values.encode(object, forKey: "object")
    }
}
