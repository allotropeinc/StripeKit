// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceTransactionGbpCreditTransferData: Codable {
    /// Bank account fingerprint associated with the Stripe owned bank account receiving the transfer.
    public var fingerprint: String?
    /// The credit transfer rails the sender used to push this transfer. The possible rails are: Faster Payments, BACS, CHAPS, and wire transfers. Currently only Faster Payments is supported.
    public var fundingMethod: String?
    /// Last 4 digits of sender account number associated with the transfer.
    public var last4: String?
    /// Sender entered arbitrary information about the transfer.
    public var reference: String?
    /// Sender account number associated with the transfer.
    public var senderAccountNumber: String?
    /// Sender name associated with the transfer.
    public var senderName: String?
    /// Sender sort code associated with the transfer.
    public var senderSortCode: String?

    public init(fingerprint: String? = nil, fundingMethod: String? = nil, last4: String? = nil, reference: String? = nil, senderAccountNumber: String? = nil, senderName: String? = nil, senderSortCode: String? = nil) {
        self.fingerprint = fingerprint
        self.fundingMethod = fundingMethod
        self.last4 = last4
        self.reference = reference
        self.senderAccountNumber = senderAccountNumber
        self.senderName = senderName
        self.senderSortCode = senderSortCode
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.fingerprint = try values.decodeIfPresent(String.self, forKey: "fingerprint")
        self.fundingMethod = try values.decodeIfPresent(String.self, forKey: "funding_method")
        self.last4 = try values.decodeIfPresent(String.self, forKey: "last4")
        self.reference = try values.decodeIfPresent(String.self, forKey: "reference")
        self.senderAccountNumber = try values.decodeIfPresent(String.self, forKey: "sender_account_number")
        self.senderName = try values.decodeIfPresent(String.self, forKey: "sender_name")
        self.senderSortCode = try values.decodeIfPresent(String.self, forKey: "sender_sort_code")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(fingerprint, forKey: "fingerprint")
        try values.encodeIfPresent(fundingMethod, forKey: "funding_method")
        try values.encodeIfPresent(last4, forKey: "last4")
        try values.encodeIfPresent(reference, forKey: "reference")
        try values.encodeIfPresent(senderAccountNumber, forKey: "sender_account_number")
        try values.encodeIfPresent(senderName, forKey: "sender_name")
        try values.encodeIfPresent(senderSortCode, forKey: "sender_sort_code")
    }
}