// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingCardholderAddress: Codable {
    public var address: Address

    public init(address: Address) {
        self.address = address
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.address = try values.decode(Address.self, forKey: "address")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(address, forKey: "address")
    }
}
