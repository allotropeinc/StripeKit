// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceTypeMultibanco: Codable {
    public var entity: String?
    public var reference: String?
    public var refundAccountHolderAddressCity: String?
    public var refundAccountHolderAddressCountry: String?
    public var refundAccountHolderAddressLine1: String?
    public var refundAccountHolderAddressLine2: String?
    public var refundAccountHolderAddressPostalCode: String?
    public var refundAccountHolderAddressState: String?
    public var refundAccountHolderName: String?
    public var refundIban: String?

    public init(entity: String? = nil, reference: String? = nil, refundAccountHolderAddressCity: String? = nil, refundAccountHolderAddressCountry: String? = nil, refundAccountHolderAddressLine1: String? = nil, refundAccountHolderAddressLine2: String? = nil, refundAccountHolderAddressPostalCode: String? = nil, refundAccountHolderAddressState: String? = nil, refundAccountHolderName: String? = nil, refundIban: String? = nil) {
        self.entity = entity
        self.reference = reference
        self.refundAccountHolderAddressCity = refundAccountHolderAddressCity
        self.refundAccountHolderAddressCountry = refundAccountHolderAddressCountry
        self.refundAccountHolderAddressLine1 = refundAccountHolderAddressLine1
        self.refundAccountHolderAddressLine2 = refundAccountHolderAddressLine2
        self.refundAccountHolderAddressPostalCode = refundAccountHolderAddressPostalCode
        self.refundAccountHolderAddressState = refundAccountHolderAddressState
        self.refundAccountHolderName = refundAccountHolderName
        self.refundIban = refundIban
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.entity = try values.decodeIfPresent(String.self, forKey: "entity")
        self.reference = try values.decodeIfPresent(String.self, forKey: "reference")
        self.refundAccountHolderAddressCity = try values.decodeIfPresent(String.self, forKey: "refund_account_holder_address_city")
        self.refundAccountHolderAddressCountry = try values.decodeIfPresent(String.self, forKey: "refund_account_holder_address_country")
        self.refundAccountHolderAddressLine1 = try values.decodeIfPresent(String.self, forKey: "refund_account_holder_address_line1")
        self.refundAccountHolderAddressLine2 = try values.decodeIfPresent(String.self, forKey: "refund_account_holder_address_line2")
        self.refundAccountHolderAddressPostalCode = try values.decodeIfPresent(String.self, forKey: "refund_account_holder_address_postal_code")
        self.refundAccountHolderAddressState = try values.decodeIfPresent(String.self, forKey: "refund_account_holder_address_state")
        self.refundAccountHolderName = try values.decodeIfPresent(String.self, forKey: "refund_account_holder_name")
        self.refundIban = try values.decodeIfPresent(String.self, forKey: "refund_iban")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(entity, forKey: "entity")
        try values.encodeIfPresent(reference, forKey: "reference")
        try values.encodeIfPresent(refundAccountHolderAddressCity, forKey: "refund_account_holder_address_city")
        try values.encodeIfPresent(refundAccountHolderAddressCountry, forKey: "refund_account_holder_address_country")
        try values.encodeIfPresent(refundAccountHolderAddressLine1, forKey: "refund_account_holder_address_line1")
        try values.encodeIfPresent(refundAccountHolderAddressLine2, forKey: "refund_account_holder_address_line2")
        try values.encodeIfPresent(refundAccountHolderAddressPostalCode, forKey: "refund_account_holder_address_postal_code")
        try values.encodeIfPresent(refundAccountHolderAddressState, forKey: "refund_account_holder_address_state")
        try values.encodeIfPresent(refundAccountHolderName, forKey: "refund_account_holder_name")
        try values.encodeIfPresent(refundIban, forKey: "refund_iban")
    }
}
