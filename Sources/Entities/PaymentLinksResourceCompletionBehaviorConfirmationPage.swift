// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PaymentLinksResourceCompletionBehaviorConfirmationPage: Codable {
    /// The custom message that is displayed to the customer after the purchase is complete.
    public var customMessage: String?

    public init(customMessage: String? = nil) {
        self.customMessage = customMessage
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.customMessage = try values.decodeIfPresent(String.self, forKey: "custom_message")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(customMessage, forKey: "custom_message")
    }
}