// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct LegalEntityPersonVerificationDocument: Codable {
    /// The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
    public var back: Back?
    /// A user-displayable string describing the verification state of this document. For example, if a document is uploaded and the picture is too fuzzy, this may say "Identity document is too unclear to read".
    public var details: String?
    /// One of `document_corrupt`, `document_country_not_supported`, `document_expired`, `document_failed_copy`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_failed_greyscale`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_missing_back`, `document_missing_front`, `document_not_readable`, `document_not_uploaded`, `document_photo_mismatch`, `document_too_large`, or `document_type_not_supported`. A machine-readable code specifying the verification state for this document.
    public var detailsCode: String?
    /// The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
    public var front: Front?

    /// The back of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
    public struct Back: Codable {
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

    /// The front of an ID returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
    public struct Front: Codable {
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

    public init(back: Back? = nil, details: String? = nil, detailsCode: String? = nil, front: Front? = nil) {
        self.back = back
        self.details = details
        self.detailsCode = detailsCode
        self.front = front
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.back = try values.decodeIfPresent(Back.self, forKey: "back")
        self.details = try values.decodeIfPresent(String.self, forKey: "details")
        self.detailsCode = try values.decodeIfPresent(String.self, forKey: "details_code")
        self.front = try values.decodeIfPresent(Front.self, forKey: "front")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(back, forKey: "back")
        try values.encodeIfPresent(details, forKey: "details")
        try values.encodeIfPresent(detailsCode, forKey: "details_code")
        try values.encodeIfPresent(front, forKey: "front")
    }
}
