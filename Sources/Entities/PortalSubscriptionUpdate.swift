// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct PortalSubscriptionUpdate: Codable {
    /// The types of subscription updates that are supported for items listed in the `products` attribute. When empty, subscriptions are not updateable.
    public var defaultAllowedUpdates: [DefaultAllowedUpdate]
    /// Whether the feature is enabled.
    public var isEnabled: Bool
    /// The list of products that support subscription updates.
    public var products: [PortalSubscriptionUpdateProduct]?
    /// Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`.
    public var prorationBehavior: ProrationBehavior

    public enum DefaultAllowedUpdate: String, Codable, CaseIterable {
        case price
        case promotionCode = "promotion_code"
        case quantity
    }

    /// Determines how to handle prorations resulting from subscription updates. Valid values are `none`, `create_prorations`, and `always_invoice`.
    public enum ProrationBehavior: String, Codable, CaseIterable {
        case alwaysInvoice = "always_invoice"
        case createProrations = "create_prorations"
        case `none`
    }

    public init(defaultAllowedUpdates: [DefaultAllowedUpdate], isEnabled: Bool, products: [PortalSubscriptionUpdateProduct]? = nil, prorationBehavior: ProrationBehavior) {
        self.defaultAllowedUpdates = defaultAllowedUpdates
        self.isEnabled = isEnabled
        self.products = products
        self.prorationBehavior = prorationBehavior
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.defaultAllowedUpdates = try values.decode([DefaultAllowedUpdate].self, forKey: "default_allowed_updates")
        self.isEnabled = try values.decode(Bool.self, forKey: "enabled")
        self.products = try values.decodeIfPresent([PortalSubscriptionUpdateProduct].self, forKey: "products")
        self.prorationBehavior = try values.decode(ProrationBehavior.self, forKey: "proration_behavior")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(defaultAllowedUpdates, forKey: "default_allowed_updates")
        try values.encode(isEnabled, forKey: "enabled")
        try values.encodeIfPresent(products, forKey: "products")
        try values.encode(prorationBehavior, forKey: "proration_behavior")
    }
}
