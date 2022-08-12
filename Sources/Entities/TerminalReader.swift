// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// TerminalReaderReader
///
/// A Reader represents a physical device for accepting payment details.
/// 
/// Related guide: [Connecting to a Reader](https://stripe.com/docs/terminal/payments/connect-reader).
public struct TerminalReader: Codable {
    /// The most recent action performed by the reader.
    public var action: TerminalReaderReaderResourceReaderAction?
    /// The current software version of the reader.
    public var deviceSwVersion: String?
    /// Type of reader, one of `bbpos_wisepad3`, `stripe_m2`, `bbpos_chipper2x`, `bbpos_wisepos_e`, `verifone_P400`, or `simulated_wisepos_e`.
    public var deviceType: DeviceType
    /// Unique identifier for the object.
    public var id: String
    /// The local IP address of the reader.
    public var ipAddress: String?
    /// Custom label given to the reader for easier identification.
    public var label: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// The location identifier of the reader.
    public var location: Location?
    /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    public var metadata: [String: String]
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// Serial number of the reader.
    public var serialNumber: String
    /// The networking status of the reader.
    public var status: String?

    /// Type of reader, one of `bbpos_wisepad3`, `stripe_m2`, `bbpos_chipper2x`, `bbpos_wisepos_e`, `verifone_P400`, or `simulated_wisepos_e`.
    public enum DeviceType: String, Codable, CaseIterable {
        case bbposChipper2x = "bbpos_chipper2x"
        case bbposWisepad3 = "bbpos_wisepad3"
        case bbposWiseposE = "bbpos_wisepos_e"
        case simulatedWiseposE = "simulated_wisepos_e"
        case stripeM2 = "stripe_m2"
        case verifoneP400 = "verifone_P400"
    }

    /// The location identifier of the reader.
    public struct Location: Codable {
        public var string: String?
        /// TerminalLocationLocation
        ///
        /// A Location represents a grouping of readers.
        /// 
        /// Related guide: [Fleet Management](https://stripe.com/docs/terminal/fleet/locations).
        public var terminalLocation: TerminalLocation?

        public init(string: String? = nil, terminalLocation: TerminalLocation? = nil) {
            self.string = string
            self.terminalLocation = terminalLocation
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.terminalLocation = try? container.decode(TerminalLocation.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = terminalLocation { try container.encode(value) }
        }
    }

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case terminalReader = "terminal.reader"
    }

    public init(action: TerminalReaderReaderResourceReaderAction? = nil, deviceSwVersion: String? = nil, deviceType: DeviceType, id: String, ipAddress: String? = nil, label: String, isLivemode: Bool, location: Location? = nil, metadata: [String: String], object: Object, serialNumber: String, status: String? = nil) {
        self.action = action
        self.deviceSwVersion = deviceSwVersion
        self.deviceType = deviceType
        self.id = id
        self.ipAddress = ipAddress
        self.label = label
        self.isLivemode = isLivemode
        self.location = location
        self.metadata = metadata
        self.object = object
        self.serialNumber = serialNumber
        self.status = status
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.action = try values.decodeIfPresent(TerminalReaderReaderResourceReaderAction.self, forKey: "action")
        self.deviceSwVersion = try values.decodeIfPresent(String.self, forKey: "device_sw_version")
        self.deviceType = try values.decode(DeviceType.self, forKey: "device_type")
        self.id = try values.decode(String.self, forKey: "id")
        self.ipAddress = try values.decodeIfPresent(String.self, forKey: "ip_address")
        self.label = try values.decode(String.self, forKey: "label")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.location = try values.decodeIfPresent(Location.self, forKey: "location")
        self.metadata = try values.decode([String: String].self, forKey: "metadata")
        self.object = try values.decode(Object.self, forKey: "object")
        self.serialNumber = try values.decode(String.self, forKey: "serial_number")
        self.status = try values.decodeIfPresent(String.self, forKey: "status")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(action, forKey: "action")
        try values.encodeIfPresent(deviceSwVersion, forKey: "device_sw_version")
        try values.encode(deviceType, forKey: "device_type")
        try values.encode(id, forKey: "id")
        try values.encodeIfPresent(ipAddress, forKey: "ip_address")
        try values.encode(label, forKey: "label")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encodeIfPresent(location, forKey: "location")
        try values.encode(metadata, forKey: "metadata")
        try values.encode(object, forKey: "object")
        try values.encode(serialNumber, forKey: "serial_number")
        try values.encodeIfPresent(status, forKey: "status")
    }
}