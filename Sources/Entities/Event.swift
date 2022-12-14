// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// NotificationEvent
///
/// Events are our way of letting you know when something interesting happens in
/// your account. When an interesting event occurs, we create a new `Event`
/// object. For example, when a charge succeeds, we create a `charge.succeeded`
/// event; and when an invoice payment attempt fails, we create an
/// `invoice.payment_failed` event. Note that many API requests may cause multiple
/// events to be created. For example, if you create a new subscription for a
/// customer, you will receive both a `customer.subscription.created` event and a
/// `charge.succeeded` event.
/// 
/// Events occur when the state of another API resource changes. The state of that
/// resource at the time of the change is embedded in the event's data field. For
/// example, a `charge.succeeded` event will contain a charge, and an
/// `invoice.payment_failed` event will contain an invoice.
/// 
/// As with other API resources, you can use endpoints to retrieve an
/// [individual event](https://stripe.com/docs/api#retrieve_event) or a [list of events](https://stripe.com/docs/api#list_events)
/// from the API. We also have a separate
/// [webhooks](http://en.wikipedia.org/wiki/Webhook) system for sending the
/// `Event` objects directly to an endpoint on your server. Webhooks are managed
/// in your
/// [account settings](https://dashboard.stripe.com/account/webhooks),
/// and our [Using Webhooks](https://stripe.com/docs/webhooks) guide will help you get set up.
/// 
/// When using [Connect](https://stripe.com/docs/connect), you can also receive notifications of
/// events that occur in connected accounts. For these events, there will be an
/// additional `account` attribute in the received `Event` object.
/// 
/// **NOTE:** Right now, access to events through the [Retrieve Event API](https://stripe.com/docs/api#retrieve_event) is
/// guaranteed only for 30 days.
public struct Event: Codable {
    /// The connected account that originated the event.
    public var account: String?
    /// The Stripe API version used to render `data`. *Note: This property is populated only for events on or after October 31, 2014*.
    public var apiVersion: String?
    /// Time at which the object was created. Measured in seconds since the Unix epoch.
    public var created: Int
    /// NotificationEventData
    public var data: NotificationEventData
    /// Unique identifier for the object.
    public var id: String
    /// Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    public var isLivemode: Bool
    /// String representing the object's type. Objects of the same type share the same value.
    public var object: Object
    /// Number of webhooks that have yet to be successfully delivered (i.e., to return a 20x response) to the URLs you've specified.
    public var pendingWebhooks: Int
    /// Information on the API request that instigated the event.
    public var request: NotificationEventRequest?
    /// Description of the event (e.g., `invoice.created` or `charge.refunded`).
    public var type: String

    /// String representing the object's type. Objects of the same type share the same value.
    public enum Object: String, Codable, CaseIterable {
        case event
    }

    public init(account: String? = nil, apiVersion: String? = nil, created: Int, data: NotificationEventData, id: String, isLivemode: Bool, object: Object, pendingWebhooks: Int, request: NotificationEventRequest? = nil, type: String) {
        self.account = account
        self.apiVersion = apiVersion
        self.created = created
        self.data = data
        self.id = id
        self.isLivemode = isLivemode
        self.object = object
        self.pendingWebhooks = pendingWebhooks
        self.request = request
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.account = try values.decodeIfPresent(String.self, forKey: "account")
        self.apiVersion = try values.decodeIfPresent(String.self, forKey: "api_version")
        self.created = try values.decode(Int.self, forKey: "created")
        self.data = try values.decode(NotificationEventData.self, forKey: "data")
        self.id = try values.decode(String.self, forKey: "id")
        self.isLivemode = try values.decode(Bool.self, forKey: "livemode")
        self.object = try values.decode(Object.self, forKey: "object")
        self.pendingWebhooks = try values.decode(Int.self, forKey: "pending_webhooks")
        self.request = try values.decodeIfPresent(NotificationEventRequest.self, forKey: "request")
        self.type = try values.decode(String.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(account, forKey: "account")
        try values.encodeIfPresent(apiVersion, forKey: "api_version")
        try values.encode(created, forKey: "created")
        try values.encode(data, forKey: "data")
        try values.encode(id, forKey: "id")
        try values.encode(isLivemode, forKey: "livemode")
        try values.encode(object, forKey: "object")
        try values.encode(pendingWebhooks, forKey: "pending_webhooks")
        try values.encodeIfPresent(request, forKey: "request")
        try values.encode(type, forKey: "type")
    }
}
