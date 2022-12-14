// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PaymentIntentNextActionWechatPayRedirectToIosApp: Codable {
    /// An universal link that redirect to WeChat Pay app
    public var nativeURL: String

    public init(nativeURL: String) {
        self.nativeURL = nativeURL
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.nativeURL = try values.decode(String.self, forKey: "native_url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(nativeURL, forKey: "native_url")
    }
}
