// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AccountTermsOfService: Codable {
    /// The Unix timestamp marking when the account representative accepted the service agreement.
    public var date: Int?
    /// The IP address from which the account representative accepted the service agreement.
    public var ip: String?
    /// The user agent of the browser from which the account representative accepted the service agreement.
    public var userAgent: String?

    public init(date: Int? = nil, ip: String? = nil, userAgent: String? = nil) {
        self.date = date
        self.ip = ip
        self.userAgent = userAgent
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.date = try values.decodeIfPresent(Int.self, forKey: "date")
        self.ip = try values.decodeIfPresent(String.self, forKey: "ip")
        self.userAgent = try values.decodeIfPresent(String.self, forKey: "user_agent")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(date, forKey: "date")
        try values.encodeIfPresent(ip, forKey: "ip")
        try values.encodeIfPresent(userAgent, forKey: "user_agent")
    }
}
