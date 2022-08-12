// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct InvoiceSettingRenderingOptions: Codable {
    /// How line-item prices and amounts will be displayed with respect to tax on invoice PDFs.
    public var amountTaxDisplay: String?

    public init(amountTaxDisplay: String? = nil) {
        self.amountTaxDisplay = amountTaxDisplay
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amountTaxDisplay = try values.decodeIfPresent(String.self, forKey: "amount_tax_display")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(amountTaxDisplay, forKey: "amount_tax_display")
    }
}