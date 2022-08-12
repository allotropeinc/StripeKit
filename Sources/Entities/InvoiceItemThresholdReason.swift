// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct InvoiceItemThresholdReason: Codable {
    /// The IDs of the line items that triggered the threshold invoice.
    public var lineItemIDs: [String]
    /// The quantity threshold boundary that applied to the given line item.
    public var usageGte: Int

    public init(lineItemIDs: [String], usageGte: Int) {
        self.lineItemIDs = lineItemIDs
        self.usageGte = usageGte
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.lineItemIDs = try values.decode([String].self, forKey: "line_item_ids")
        self.usageGte = try values.decode(Int.self, forKey: "usage_gte")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(lineItemIDs, forKey: "line_item_ids")
        try values.encode(usageGte, forKey: "usage_gte")
    }
}