// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// SecretServiceResourceSecret
///
/// Secret Store is an API that allows Stripe Apps developers to securely persist secrets for use by UI Extensions and app backends.
/// 
/// The primary resource in Secret Store is a `secret`. Other apps can't view secrets created by an app. Additionally, secrets are scoped to provide further permission control.
/// 
/// All Dashboard users and the app backend share `account` scoped secrets. Use the `account` scope for secrets that don't change per-user, like a third-party API key.
/// 
/// A `user` scoped secret is accessible by the app backend and one specific Dashboard user. Use the `user` scope for per-user secrets like per-user OAuth tokens, where different users might have different permissions.
/// 
/// Related guide: [Store data between page reloads](https://stripe.com/docs/stripe-apps/store-auth-data-custom-objects).
public struct AppsSecret: Codable {
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// If true, indicates that this secret has been deleted
    public var isDeleted: Bool?
    /// The Unix timestamp for the expiry time of the secret, after which the secret deletes.
    public var expiresAt: Int?
    /// Unique identifier for the object.
    public var id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// A name for the secret that's unique within the scope.
    public var name: String
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// The plaintext secret value to be stored.
    public var payload: String?
    /// SecretServiceResourceScope
    public var scope: SecretServiceResourceScope

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case appsSecret = "apps.secret"
    }

    public init(created: Int, isDeleted: Bool? = nil, expiresAt: Int? = nil, id: String, isLivemode: Bool, name: String, object: Object, payload: String? = nil, scope: SecretServiceResourceScope) {
        self.created = created
        self.isDeleted = isDeleted
        self.expiresAt = expiresAt
        self.id = id
        self.isLivemode = isLivemode
        self.name = name
        self.object = object
        self.payload = payload
        self.scope = scope
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.created = try values.decode(Int.self, forKey: "created")
        self.isDeleted = try values.decodeIfPresent(Bool.self, forKey: "deleted")
        self.expiresAt = try values.decodeIfPresent(Int.self, forKey: "expires_at")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.name = try values.decode(String.self, forKey: "name")
        self.object = try values.decode(Object.self, forKey: "object")
        self.payload = try values.decodeIfPresent(String.self, forKey: "payload")
        self.scope = try values.decode(SecretServiceResourceScope.self, forKey: "scope")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(created, forKey: "created")
        try values.encodeIfPresent(isDeleted, forKey: "deleted")
        try values.encodeIfPresent(expiresAt, forKey: "expires_at")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(name, forKey: "name")
        try values.encode(object, forKey: "object")
        try values.encodeIfPresent(payload, forKey: "payload")
        try values.encode(scope, forKey: "scope")
    }
}
