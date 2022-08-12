// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct BankConnectionsResourceBalance: Codable {
    /// The time that the external institution calculated this balance. Measured in seconds since the Unix epoch.
    public var asOf: Int
    /// BankConnectionsResourceBalanceAPIResourceCashBalance
    public var cash: BankConnectionsResourceBalanceAPIResourceCashBalance?
    /// BankConnectionsResourceBalanceAPIResourceCreditBalance
    public var credit: BankConnectionsResourceBalanceAPIResourceCreditBalance?
    /// The balances owed to (or by) the account holder.
    /// 
    /// Each key is a three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase.
    /// 
    /// Each value is a integer amount. A positive amount indicates money owed to the account holder. A negative amount indicates money owed by the account holder.
    public var current: [String: Int]
    /// The `type` of the balance. An additional hash is included on the balance with a name matching this value.
    public var type: `Type`

    /// The `type` of the balance. An additional hash is included on the balance with a name matching this value.
    public enum `Type`: String, Codable, CaseIterable {
        case cash
        case credit
    }

    public init(asOf: Int, cash: BankConnectionsResourceBalanceAPIResourceCashBalance? = nil, credit: BankConnectionsResourceBalanceAPIResourceCreditBalance? = nil, current: [String: Int], type: `Type`) {
        self.asOf = asOf
        self.cash = cash
        self.credit = credit
        self.current = current
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.asOf = try values.decode(Int.self, forKey: "as_of")
        self.cash = try values.decodeIfPresent(BankConnectionsResourceBalanceAPIResourceCashBalance.self, forKey: "cash")
        self.credit = try values.decodeIfPresent(BankConnectionsResourceBalanceAPIResourceCreditBalance.self, forKey: "credit")
        self.current = try values.decode([String: Int].self, forKey: "current")
        self.type = try values.decode(`Type`.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(asOf, forKey: "as_of")
        try values.encodeIfPresent(cash, forKey: "cash")
        try values.encodeIfPresent(credit, forKey: "credit")
        try values.encode(current, forKey: "current")
        try values.encode(type, forKey: "type")
    }
}