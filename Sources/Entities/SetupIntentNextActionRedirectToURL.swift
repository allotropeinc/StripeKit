// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SetupIntentNextActionRedirectToURL: Codable {
    /// If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
    public var returnURL: String?
    /// The URL you must redirect your customer to in order to authenticate.
    public var url: String?

    public init(returnURL: String? = nil, url: String? = nil) {
        self.returnURL = returnURL
        self.url = url
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.returnURL = try values.decodeIfPresent(String.self, forKey: "return_url")
        self.url = try values.decodeIfPresent(String.self, forKey: "url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(returnURL, forKey: "return_url")
        try values.encodeIfPresent(url, forKey: "url")
    }
}
