// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public final class TreasuryOutboundPaymentsResourceReturnedStatus: Codable {
    /// Reason for the return.
    public let code: Code
    /// The Transaction associated with this object.
    public let transaction: Transaction

    /// Reason for the return.
    public enum Code: String, Codable, CaseIterable {
        case accountClosed = "account_closed"
        case accountFrozen = "account_frozen"
        case bankAccountRestricted = "bank_account_restricted"
        case bankOwnershipChanged = "bank_ownership_changed"
        case declined
        case incorrectAccountHolderName = "incorrect_account_holder_name"
        case invalidAccountNumber = "invalid_account_number"
        case invalidCurrency = "invalid_currency"
        case noAccount = "no_account"
        case other
    }

    /// The Transaction associated with this object.
    public struct Transaction: Codable {
        public var string: String?
        /// TreasuryTransactionsResourceTransaction
        ///
        /// Transactions represent changes to a [FinancialAccount's](https://stripe.com/docs/api#financial_accounts) balance.
        public var treasuryTransaction: TreasuryTransaction?

        public init(string: String? = nil, treasuryTransaction: TreasuryTransaction? = nil) {
            self.string = string
            self.treasuryTransaction = treasuryTransaction
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.treasuryTransaction = try? container.decode(TreasuryTransaction.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = treasuryTransaction { try container.encode(value) }
        }
    }

    public init(code: Code, transaction: Transaction) {
        self.code = code
        self.transaction = transaction
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.code = try values.decode(Code.self, forKey: "code")
        self.transaction = try values.decode(Transaction.self, forKey: "transaction")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(code, forKey: "code")
        try values.encode(transaction, forKey: "transaction")
    }
}
