// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
public struct RadarRadarOptions: Codable {
    /// A [Radar Session](https://stripe.com/docs/radar/radar-session) is a snapshot of the browser metadata and device details that help Radar make more accurate predictions on your payments.
    public var session: String?

    public init(session: String? = nil) {
        self.session = session
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.session = try values.decodeIfPresent(String.self, forKey: "session")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(session, forKey: "session")
    }
}
