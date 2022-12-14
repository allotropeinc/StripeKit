// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionTransferData: Codable {
    /// A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
    public var amountPercent: Double?
    /// The account where funds from the payment will be transferred to upon payment success.
    public var destination: Destination

    /// The account where funds from the payment will be transferred to upon payment success.
    public struct Destination: Codable {
        public var string: String?
        /// This is an object representing a Stripe account. You can retrieve it to see
        /// properties on the account like its current e-mail address or if the account is
        /// enabled yet to make live charges.
        /// 
        /// Some properties, marked below, are available only to platforms that want to
        /// [create and manage Express or Custom accounts](https://stripe.com/docs/connect/accounts).
        public var account: Account?

        public init(string: String? = nil, account: Account? = nil) {
            self.string = string
            self.account = account
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.account = try? container.decode(Account.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = account { try container.encode(value) }
        }
    }

    public init(amountPercent: Double? = nil, destination: Destination) {
        self.amountPercent = amountPercent
        self.destination = destination
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.amountPercent = try values.decodeIfPresent(Double.self, forKey: "amount_percent")
        self.destination = try values.decode(Destination.self, forKey: "destination")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(amountPercent, forKey: "amount_percent")
        try values.encode(destination, forKey: "destination")
    }
}
