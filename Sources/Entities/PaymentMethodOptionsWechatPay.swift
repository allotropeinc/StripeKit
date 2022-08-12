// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Payment_method_options_wechat_pay
public struct PaymentMethodOptionsWechatPay: Codable {
    /// The app ID registered with WeChat Pay. Only required when client is ios or android.
    public var appID: String?
    /// The client type that the end customer will pay from
    public var client: Client?
    /// Indicates that you intend to make future payments with this PaymentIntent's payment method.
    /// 
    /// Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
    /// 
    /// When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
    public var setupFutureUsage: SetupFutureUsage?

    /// The client type that the end customer will pay from
    public enum Client: String, Codable, CaseIterable {
        case android
        case ios
        case web
    }

    /// Indicates that you intend to make future payments with this PaymentIntent's payment method.
    /// 
    /// Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.
    /// 
    /// When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
    public enum SetupFutureUsage: String, Codable, CaseIterable {
        case `none`
    }

    public init(appID: String? = nil, client: Client? = nil, setupFutureUsage: SetupFutureUsage? = nil) {
        self.appID = appID
        self.client = client
        self.setupFutureUsage = setupFutureUsage
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.appID = try values.decodeIfPresent(String.self, forKey: "app_id")
        self.client = try values.decodeIfPresent(Client.self, forKey: "client")
        self.setupFutureUsage = try values.decodeIfPresent(SetupFutureUsage.self, forKey: "setup_future_usage")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(appID, forKey: "app_id")
        try values.encodeIfPresent(client, forKey: "client")
        try values.encodeIfPresent(setupFutureUsage, forKey: "setup_future_usage")
    }
}