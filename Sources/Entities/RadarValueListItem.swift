// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// RadarListListItem
///
/// Value list items allow you to add specific values to a given Radar value list, which can then be used in rules.
/// 
/// Related guide: [Managing List Items](https://stripe.com/docs/radar/lists#managing-list-items).
public struct RadarValueListItem: Codable {
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// The name or email address of the user who added this item to the value list.
    public var createdBy: String
    /// Unique identifier for the object.
    public var id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// The value of the item.
    public var value: String
    /// The identifier of the value list this item belongs to.
    public var valueList: String

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case radarValueListItem = "radar.value_list_item"
    }

    public init(created: Int, createdBy: String, id: String, isLivemode: Bool, object: Object, value: String, valueList: String) {
        self.created = created
        self.createdBy = createdBy
        self.id = id
        self.isLivemode = isLivemode
        self.object = object
        self.value = value
        self.valueList = valueList
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.created = try values.decode(Int.self, forKey: "created")
        self.createdBy = try values.decode(String.self, forKey: "created_by")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.object = try values.decode(Object.self, forKey: "object")
        self.value = try values.decode(String.self, forKey: "value")
        self.valueList = try values.decode(String.self, forKey: "value_list")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(created, forKey: "created")
        try values.encode(createdBy, forKey: "created_by")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(object, forKey: "object")
        try values.encode(value, forKey: "value")
        try values.encode(valueList, forKey: "value_list")
    }
}
