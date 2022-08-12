// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows: Codable {
    /// If funds for this flow were returned after the flow went to the `succeeded` state, this field contains a reference to the ReceivedDebit return.
    public var receivedDebit: String?

    public init(receivedDebit: String? = nil) {
        self.receivedDebit = receivedDebit
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.receivedDebit = try values.decodeIfPresent(String.self, forKey: "received_debit")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(receivedDebit, forKey: "received_debit")
    }
}
