// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingDisputeNotReceivedEvidence: Codable {
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
    public var additionalDocumentation: AdditionalDocumentation?
    /// Date when the cardholder expected to receive the product.
    public var expectedAt: Int?
    /// Explanation of why the cardholder is disputing this transaction.
    public var explanation: String?
    /// Description of the merchandise or service that was purchased.
    public var productDescription: String?
    /// Whether the product was a merchandise or service.
    public var productType: ProductType?

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

    /// Whether the product was a merchandise or service.
    public enum ProductType: String, Codable, CaseIterable {
        case merchandise
        case service
    }

    public init(additionalDocumentation: AdditionalDocumentation? = nil, expectedAt: Int? = nil, explanation: String? = nil, productDescription: String? = nil, productType: ProductType? = nil) {
        self.additionalDocumentation = additionalDocumentation
        self.expectedAt = expectedAt
        self.explanation = explanation
        self.productDescription = productDescription
        self.productType = productType
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.additionalDocumentation = try values.decodeIfPresent(AdditionalDocumentation.self, forKey: "additional_documentation")
        self.expectedAt = try values.decodeIfPresent(Int.self, forKey: "expected_at")
        self.explanation = try values.decodeIfPresent(String.self, forKey: "explanation")
        self.productDescription = try values.decodeIfPresent(String.self, forKey: "product_description")
        self.productType = try values.decodeIfPresent(ProductType.self, forKey: "product_type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(additionalDocumentation, forKey: "additional_documentation")
        try values.encodeIfPresent(expectedAt, forKey: "expected_at")
        try values.encodeIfPresent(explanation, forKey: "explanation")
        try values.encodeIfPresent(productDescription, forKey: "product_description")
        try values.encodeIfPresent(productType, forKey: "product_type")
    }
}
