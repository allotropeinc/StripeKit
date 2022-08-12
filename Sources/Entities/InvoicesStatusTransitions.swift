// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct InvoicesStatusTransitions: Codable {
    /// The time that the invoice draft was finalized.
    public var finalizedAt: Int?
    /// The time that the invoice was marked uncollectible.
    public var markedUncollectibleAt: Int?
    /// The time that the invoice was paid.
    public var paidAt: Int?
    /// The time that the invoice was voided.
    public var voidedAt: Int?

    public init(finalizedAt: Int? = nil, markedUncollectibleAt: Int? = nil, paidAt: Int? = nil, voidedAt: Int? = nil) {
        self.finalizedAt = finalizedAt
        self.markedUncollectibleAt = markedUncollectibleAt
        self.paidAt = paidAt
        self.voidedAt = voidedAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.finalizedAt = try values.decodeIfPresent(Int.self, forKey: "finalized_at")
        self.markedUncollectibleAt = try values.decodeIfPresent(Int.self, forKey: "marked_uncollectible_at")
        self.paidAt = try values.decodeIfPresent(Int.self, forKey: "paid_at")
        self.voidedAt = try values.decodeIfPresent(Int.self, forKey: "voided_at")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(finalizedAt, forKey: "finalized_at")
        try values.encodeIfPresent(markedUncollectibleAt, forKey: "marked_uncollectible_at")
        try values.encodeIfPresent(paidAt, forKey: "paid_at")
        try values.encodeIfPresent(voidedAt, forKey: "voided_at")
    }
}
