// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var fileLinks: FileLinks {
        FileLinks(path: "/v1/file_links")
    }

    public struct FileLinks {
        /// Path: `/v1/file_links`
        public let path: String

        /// <p>Returns a list of file links.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetFileLinks")
        }

        /// FileFileLinkList
        public struct GetResponse: Decodable {
            /// Details about each object.
            public var data: [StripeKit.FileLink]
            /// True if this list has another page of items after this one that can be fetched.
            public var hasMore: Bool
            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public var object: Object
            /// The URL where this list can be accessed.
            public var url: String

            /// String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
            public enum Object: String, Codable, CaseIterable {
                case list
            }

            public init(data: [StripeKit.FileLink], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.FileLink].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var created: Created?
            public var endingBefore: String?
            public var expand: [String]?
            public var isExpired: Bool?
            public var file: String?
            public var limit: Int?
            public var startingAfter: String?

            public struct Created: Codable {
                /// Range_query_specs
                public var object: Object?
                public var int: Int?

                /// Range_query_specs
                public struct Object: Codable {
                    public var gt: Int?
                    public var gte: Int?
                    public var lt: Int?
                    public var lte: Int?

                    public init(gt: Int? = nil, gte: Int? = nil, lt: Int? = nil, lte: Int? = nil) {
                        self.gt = gt
                        self.gte = gte
                        self.lt = lt
                        self.lte = lte
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(gt, forKey: "gt")
                        encoder.encode(gte, forKey: "gte")
                        encoder.encode(lt, forKey: "lt")
                        encoder.encode(lte, forKey: "lte")
                        return encoder.items
                    }
                }

                public init(object: Object? = nil, int: Int? = nil) {
                    self.object = object
                    self.int = int
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(object, forKey: "object")
                    encoder.encode(int, forKey: "int")
                    return encoder.items
                }
            }

            public init(created: Created? = nil, endingBefore: String? = nil, expand: [String]? = nil, isExpired: Bool? = nil, file: String? = nil, limit: Int? = nil, startingAfter: String? = nil) {
                self.created = created
                self.endingBefore = endingBefore
                self.expand = expand
                self.isExpired = isExpired
                self.file = file
                self.limit = limit
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(created, forKey: "created", isDeepObject: true)
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(isExpired, forKey: "expired")
                encoder.encode(file, forKey: "file")
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }

        /// <p>Creates a new file link object.</p>
        public func post(_ body: PostRequest) -> Request<StripeKit.FileLink> {
            Request(method: "POST", url: path, body: URLQueryEncoder.encode(body).percentEncodedQuery, id: "PostFileLinks")
        }

        public struct PostRequest: Encodable {
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// A future timestamp after which the link will no longer be usable.
            public var expiresAt: Int?
            /// The ID of the file. The file's `purpose` must be one of the following: `business_icon`, `business_logo`, `customer_signature`, `dispute_evidence`, `finance_report_run`, `identity_document_downloadable`, `pci_document`, `selfie`, `sigma_scheduled_query`, or `tax_document_user_upload`.
            public var file: String
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?

            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public struct Metadata: Encodable {
                public var stringString: [String: String]?
                public var object: Object?

                public enum Object: String, Codable, CaseIterable {
                    case empty = ""
                }

                public init(stringString: [String: String]? = nil, object: Object? = nil) {
                    self.stringString = stringString
                    self.object = object
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(stringString, forKey: "stringString")
                    encoder.encode(object, forKey: "object")
                    return encoder.items
                }
            }

            public init(expand: [String]? = nil, expiresAt: Int? = nil, file: String, metadata: Metadata? = nil) {
                self.expand = expand
                self.expiresAt = expiresAt
                self.file = file
                self.metadata = metadata
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(expand, forKey: "expand")
                encoder.encode(expiresAt, forKey: "expires_at")
                encoder.encode(file, forKey: "file")
                encoder.encode(metadata, forKey: "metadata")
                return encoder.items
            }
        }
    }
}
