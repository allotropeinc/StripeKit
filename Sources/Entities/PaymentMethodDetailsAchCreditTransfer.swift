// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_details_ach_credit_transfer
public struct PaymentMethodDetailsAchCreditTransfer: Codable {
    /// Account number to transfer funds to.
    public var accountNumber: String?
    /// Name of the bank associated with the routing number.
    public var bankName: String?
    /// Routing transit number for the bank account to transfer funds to.
    public var routingNumber: String?
    /// SWIFT code of the bank associated with the routing number.
    public var swiftCode: String?

    public init(accountNumber: String? = nil, bankName: String? = nil, routingNumber: String? = nil, swiftCode: String? = nil) {
        self.accountNumber = accountNumber
        self.bankName = bankName
        self.routingNumber = routingNumber
        self.swiftCode = swiftCode
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.accountNumber = try values.decodeIfPresent(String.self, forKey: "account_number")
        self.bankName = try values.decodeIfPresent(String.self, forKey: "bank_name")
        self.routingNumber = try values.decodeIfPresent(String.self, forKey: "routing_number")
        self.swiftCode = try values.decodeIfPresent(String.self, forKey: "swift_code")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(accountNumber, forKey: "account_number")
        try values.encodeIfPresent(bankName, forKey: "bank_name")
        try values.encodeIfPresent(routingNumber, forKey: "routing_number")
        try values.encodeIfPresent(swiftCode, forKey: "swift_code")
    }
}
