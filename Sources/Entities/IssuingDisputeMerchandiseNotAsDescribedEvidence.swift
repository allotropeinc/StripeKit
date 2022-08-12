// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingDisputeMerchandiseNotAsDescribedEvidence: Codable {
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
    public var additionalDocumentation: AdditionalDocumentation?
    /// Explanation of why the cardholder is disputing this transaction.
    public var explanation: String?
    /// Date when the product was received.
    public var receivedAt: Int?
    /// Description of the cardholder's attempt to return the product.
    public var returnDescription: String?
    /// Result of cardholder's attempt to return the product.
    public var returnStatus: ReturnStatus?
    /// Date when the product was returned or attempted to be returned.
    public var returnedAt: Int?

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
    public struct AdditionalDocumentation: Codable {
        public var string: String?
        /// This is an object representing a file hosted on Stripe's servers. The
        /// file may have been uploaded by yourself using the [create file](https://stripe.com/docs/api#create_file)
        /// request (for example, when uploading dispute evidence) or it may have
        /// been created by Stripe (for example, the results of a [Sigma scheduled
        /// query](#scheduled_queries)).
        /// 
        /// Related guide: [File Upload Guide](https://stripe.com/docs/file-upload).
        public var file: File?

        public init(string: String? = nil, file: File? = nil) {
            self.string = string
            self.file = file
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.string = try? container.decode(String.self)
            self.file = try? container.decode(File.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = string { try container.encode(value) }
            if let value = file { try container.encode(value) }
        }
    }

    /// Result of cardholder's attempt to return the product.
    public enum ReturnStatus: String, Codable, CaseIterable {
        case merchantRejected = "merchant_rejected"
        case successful
    }

    public init(additionalDocumentation: AdditionalDocumentation? = nil, explanation: String? = nil, receivedAt: Int? = nil, returnDescription: String? = nil, returnStatus: ReturnStatus? = nil, returnedAt: Int? = nil) {
        self.additionalDocumentation = additionalDocumentation
        self.explanation = explanation
        self.receivedAt = receivedAt
        self.returnDescription = returnDescription
        self.returnStatus = returnStatus
        self.returnedAt = returnedAt
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.additionalDocumentation = try values.decodeIfPresent(AdditionalDocumentation.self, forKey: "additional_documentation")
        self.explanation = try values.decodeIfPresent(String.self, forKey: "explanation")
        self.receivedAt = try values.decodeIfPresent(Int.self, forKey: "received_at")
        self.returnDescription = try values.decodeIfPresent(String.self, forKey: "return_description")
        self.returnStatus = try values.decodeIfPresent(ReturnStatus.self, forKey: "return_status")
        self.returnedAt = try values.decodeIfPresent(Int.self, forKey: "returned_at")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(additionalDocumentation, forKey: "additional_documentation")
        try values.encodeIfPresent(explanation, forKey: "explanation")
        try values.encodeIfPresent(receivedAt, forKey: "received_at")
        try values.encodeIfPresent(returnDescription, forKey: "return_description")
        try values.encodeIfPresent(returnStatus, forKey: "return_status")
        try values.encodeIfPresent(returnedAt, forKey: "returned_at")
    }
}
