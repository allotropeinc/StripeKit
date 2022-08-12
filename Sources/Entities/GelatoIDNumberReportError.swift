// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct GelatoIDNumberReportError: Codable {
    /// A short machine-readable string giving the reason for the verification failure.
    public var code: Code?
    /// A human-readable message giving the reason for the failure. These messages can be shown to your users.
    public var reason: String?

    /// A short machine-readable string giving the reason for the verification failure.
    public enum Code: String, Codable, CaseIterable {
        case idNumberInsufficientDocumentData = "id_number_insufficient_document_data"
        case idNumberMismatch = "id_number_mismatch"
        case idNumberUnverifiedOther = "id_number_unverified_other"
    }

    public init(code: Code? = nil, reason: String? = nil) {
        self.code = code
        self.reason = reason
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.code = try values.decodeIfPresent(Code.self, forKey: "code")
        self.reason = try values.decodeIfPresent(String.self, forKey: "reason")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(code, forKey: "code")
        try values.encodeIfPresent(reason, forKey: "reason")
    }
}
