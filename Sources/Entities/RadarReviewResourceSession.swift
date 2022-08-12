// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct RadarReviewResourceSession: Codable {
    /// The browser used in this browser session (e.g., `Chrome`).
    public var browser: String?
    /// Information about the device used for the browser session (e.g., `Samsung SM-G930T`).
    public var device: String?
    /// The platform for the browser session (e.g., `Macintosh`).
    public var platform: String?
    /// The version for the browser session (e.g., `61.0.3163.100`).
    public var version: String?

    public init(browser: String? = nil, device: String? = nil, platform: String? = nil, version: String? = nil) {
        self.browser = browser
        self.device = device
        self.platform = platform
        self.version = version
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.browser = try values.decodeIfPresent(String.self, forKey: "browser")
        self.device = try values.decodeIfPresent(String.self, forKey: "device")
        self.platform = try values.decodeIfPresent(String.self, forKey: "platform")
        self.version = try values.decodeIfPresent(String.self, forKey: "version")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(browser, forKey: "browser")
        try values.encodeIfPresent(device, forKey: "device")
        try values.encodeIfPresent(platform, forKey: "platform")
        try values.encodeIfPresent(version, forKey: "version")
    }
}