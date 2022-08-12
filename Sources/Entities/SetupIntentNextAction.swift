// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SetupIntentNextAction: Codable {
    /// SetupIntentNextActionRedirectToUrl
    public var redirectToURL: SetupIntentNextActionRedirectToURL?
    /// Type of the next action to perform, one of `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
    public var type: String
    /// When confirming a SetupIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
    public var useStripeSdk: [String: AnyJSON]?
    /// SetupIntentNextActionVerifyWithMicrodeposits
    public var verifyWithMicrodeposits: SetupIntentNextActionVerifyWithMicrodeposits?

    public init(redirectToURL: SetupIntentNextActionRedirectToURL? = nil, type: String, useStripeSdk: [String: AnyJSON]? = nil, verifyWithMicrodeposits: SetupIntentNextActionVerifyWithMicrodeposits? = nil) {
        self.redirectToURL = redirectToURL
        self.type = type
        self.useStripeSdk = useStripeSdk
        self.verifyWithMicrodeposits = verifyWithMicrodeposits
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.redirectToURL = try values.decodeIfPresent(SetupIntentNextActionRedirectToURL.self, forKey: "redirect_to_url")
        self.type = try values.decode(String.self, forKey: "type")
        self.useStripeSdk = try values.decodeIfPresent([String: AnyJSON].self, forKey: "use_stripe_sdk")
        self.verifyWithMicrodeposits = try values.decodeIfPresent(SetupIntentNextActionVerifyWithMicrodeposits.self, forKey: "verify_with_microdeposits")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(redirectToURL, forKey: "redirect_to_url")
        try values.encode(type, forKey: "type")
        try values.encodeIfPresent(useStripeSdk, forKey: "use_stripe_sdk")
        try values.encodeIfPresent(verifyWithMicrodeposits, forKey: "verify_with_microdeposits")
    }
}