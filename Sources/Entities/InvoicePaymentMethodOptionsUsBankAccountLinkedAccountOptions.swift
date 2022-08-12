// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Invoice_payment_method_options_us_bank_account_linked_account_options
public struct InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions: Codable {
    /// The list of permissions to request. The `payment_method` permission must be included.
    public var permissions: [Permission]?

    public enum Permission: String, Codable, CaseIterable {
        case balances
        case paymentMethod = "payment_method"
        case transactions
    }

    public init(permissions: [Permission]? = nil) {
        self.permissions = permissions
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.permissions = try values.decodeIfPresent([Permission].self, forKey: "permissions")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(permissions, forKey: "permissions")
    }
}
