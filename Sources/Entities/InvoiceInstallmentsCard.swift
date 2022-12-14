// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Invoice_installments_card
public struct InvoiceInstallmentsCard: Codable {
    /// Whether Installments are enabled for this Invoice.
    public var isEnabled: Bool?

    public init(isEnabled: Bool? = nil) {
        self.isEnabled = isEnabled
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isEnabled = try values.decodeIfPresent(Bool.self, forKey: "enabled")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(isEnabled, forKey: "enabled")
    }
}
