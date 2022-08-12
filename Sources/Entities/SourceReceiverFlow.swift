// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceReceiverFlow: Codable {
    /// The address of the receiver source. This is the value that should be communicated to the customer to send their funds to.
    public var address: String?
    /// The total amount that was moved to your balance. This is almost always equal to the amount charged. In rare cases when customers deposit excess funds and we are unable to refund those, those funds get moved to your balance and show up in amount_charged as well. The amount charged is expressed in the source's currency.
    public var amountCharged: Int
    /// The total amount received by the receiver source. `amount_received = amount_returned + amount_charged` should be true for consumed sources unless customers deposit excess funds. The amount received is expressed in the source's currency.
    public var amountReceived: Int
    /// The total amount that was returned to the customer. The amount returned is expressed in the source's currency.
    public var amountReturned: Int
    /// Type of refund attribute method, one of `email`, `manual`, or `none`.
    public var refundAttributesMethod: String
    /// Type of refund attribute status, one of `missing`, `requested`, or `available`.
    public var refundAttributesStatus: String

    public init(address: String? = nil, amountCharged: Int, amountReceived: Int, amountReturned: Int, refundAttributesMethod: String, refundAttributesStatus: String) {
        self.address = address
        self.amountCharged = amountCharged
        self.amountReceived = amountReceived
        self.amountReturned = amountReturned
        self.refundAttributesMethod = refundAttributesMethod
        self.refundAttributesStatus = refundAttributesStatus
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.address = try values.decodeIfPresent(String.self, forKey: "address")
        self.amountCharged = try values.decode(Int.self, forKey: "amount_charged")
        self.amountReceived = try values.decode(Int.self, forKey: "amount_received")
        self.amountReturned = try values.decode(Int.self, forKey: "amount_returned")
        self.refundAttributesMethod = try values.decode(String.self, forKey: "refund_attributes_method")
        self.refundAttributesStatus = try values.decode(String.self, forKey: "refund_attributes_status")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(address, forKey: "address")
        try values.encode(amountCharged, forKey: "amount_charged")
        try values.encode(amountReceived, forKey: "amount_received")
        try values.encode(amountReturned, forKey: "amount_returned")
        try values.encode(refundAttributesMethod, forKey: "refund_attributes_method")
        try values.encode(refundAttributesStatus, forKey: "refund_attributes_status")
    }
}
