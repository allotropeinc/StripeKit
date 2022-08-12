// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceTransactionAchCreditTransferData: Codable {
    /// Customer data associated with the transfer.
    public var customerData: String?
    /// Bank account fingerprint associated with the transfer.
    public var fingerprint: String?
    /// Last 4 digits of the account number associated with the transfer.
    public var last4: String?
    /// Routing number associated with the transfer.
    public var routingNumber: String?

    public init(customerData: String? = nil, fingerprint: String? = nil, last4: String? = nil, routingNumber: String? = nil) {
        self.customerData = customerData
        self.fingerprint = fingerprint
        self.last4 = last4
        self.routingNumber = routingNumber
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.customerData = try values.decodeIfPresent(String.self, forKey: "customer_data")
        self.fingerprint = try values.decodeIfPresent(String.self, forKey: "fingerprint")
        self.last4 = try values.decodeIfPresent(String.self, forKey: "last4")
        self.routingNumber = try values.decodeIfPresent(String.self, forKey: "routing_number")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(customerData, forKey: "customer_data")
        try values.encodeIfPresent(fingerprint, forKey: "fingerprint")
        try values.encodeIfPresent(last4, forKey: "last4")
        try values.encodeIfPresent(routingNumber, forKey: "routing_number")
    }
}