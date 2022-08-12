// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_options_card_present
public struct PaymentMethodOptionsCardPresent: Codable {
    /// Request ability to capture this payment beyond the standard [authorization validity window](https://stripe.com/docs/terminal/features/extended-authorizations#authorization-validity)
    public var isRequestExtendedAuthorization: Bool?
    /// Request ability to [increment](https://stripe.com/docs/terminal/features/incremental-authorizations) this PaymentIntent if the combination of MCC and card brand is eligible. Check [incremental_authorization_supported](https://stripe.com/docs/api/charges/object#charge_object-payment_method_details-card_present-incremental_authorization_supported) in the [Confirm](https://stripe.com/docs/api/payment_intents/confirm) response to verify support.
    public var isRequestIncrementalAuthorizationSupport: Bool?

    public init(isRequestExtendedAuthorization: Bool? = nil, isRequestIncrementalAuthorizationSupport: Bool? = nil) {
        self.isRequestExtendedAuthorization = isRequestExtendedAuthorization
        self.isRequestIncrementalAuthorizationSupport = isRequestIncrementalAuthorizationSupport
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.isRequestExtendedAuthorization = try values.decodeIfPresent(Bool.self, forKey: "request_extended_authorization")
        self.isRequestIncrementalAuthorizationSupport = try values.decodeIfPresent(Bool.self, forKey: "request_incremental_authorization_support")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(isRequestExtendedAuthorization, forKey: "request_extended_authorization")
        try values.encodeIfPresent(isRequestIncrementalAuthorizationSupport, forKey: "request_incremental_authorization_support")
    }
}