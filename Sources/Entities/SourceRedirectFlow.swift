// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SourceRedirectFlow: Codable {
    /// The failure reason for the redirect, either `user_abort` (the customer aborted or dropped out of the redirect flow), `declined` (the authentication failed or the transaction was declined), or `processing_error` (the redirect failed due to a technical error). Present only if the redirect status is `failed`.
    public var failureReason: String?
    /// The URL you provide to redirect the customer to after they authenticated their payment.
    public var returnURL: String
    /// The status of the redirect, either `pending` (ready to be used by your customer to authenticate the transaction), `succeeded` (succesful authentication, cannot be reused) or `not_required` (redirect should not be used) or `failed` (failed authentication, cannot be reused).
    public var status: String
    /// The URL provided to you to redirect a customer to as part of a `redirect` authentication flow.
    public var url: String

    public init(failureReason: String? = nil, returnURL: String, status: String, url: String) {
        self.failureReason = failureReason
        self.returnURL = returnURL
        self.status = status
        self.url = url
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.failureReason = try values.decodeIfPresent(String.self, forKey: "failure_reason")
        self.returnURL = try values.decode(String.self, forKey: "return_url")
        self.status = try values.decode(String.self, forKey: "status")
        self.url = try values.decode(String.self, forKey: "url")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(failureReason, forKey: "failure_reason")
        try values.encode(returnURL, forKey: "return_url")
        try values.encode(status, forKey: "status")
        try values.encode(url, forKey: "url")
    }
}
