// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct IssuingCardholderIDDocument: Codable {
    /// The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
    public var back: Back?
    /// The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
    public var front: Front?

    /// The back of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
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

    /// The front of a document returned by a [file upload](https://stripe.com/docs/api#create_file) with a `purpose` value of `identity_document`.
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

    public init(back: Back? = nil, front: Front? = nil) {
        self.back = back
        self.front = front
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.back = try values.decodeIfPresent(Back.self, forKey: "back")
        self.front = try values.decodeIfPresent(Front.self, forKey: "front")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(back, forKey: "back")
        try values.encodeIfPresent(front, forKey: "front")
    }
}
