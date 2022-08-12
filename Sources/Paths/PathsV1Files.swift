// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var files: Files {
        Files(path: "/v1/files")
    }

    public struct Files {
        /// Path: `/v1/files`
        public let path: String

        /// <p>Returns a list of the files that your account has access to. The files are returned sorted by creation date, with the most recently created files appearing first.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetFiles")
        }

        /// FileFileList
        public struct GetResponse: Decodable {
            public var data: [StripeKit.File]
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

            public init(data: [StripeKit.File], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.File].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var created: Created?
            public var endingBefore: String?
            public var expand: [String]?
            public var limit: Int?
            public var purpose: Purpose?
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

            public enum Purpose: String, Codable, CaseIterable {
                case accountRequirement = "account_requirement"
                case additionalVerification = "additional_verification"
                case businessIcon = "business_icon"
                case businessLogo = "business_logo"
                case customerSignature = "customer_signature"
                case disputeEvidence = "dispute_evidence"
                case documentProviderIdentityDocument = "document_provider_identity_document"
                case financeReportRun = "finance_report_run"
                case identityDocument = "identity_document"
                case identityDocumentDownloadable = "identity_document_downloadable"
                case pciDocument = "pci_document"
                case selfie
                case sigmaScheduledQuery = "sigma_scheduled_query"
                case taxDocumentUserUpload = "tax_document_user_upload"
            }

            public init(created: Created? = nil, endingBefore: String? = nil, expand: [String]? = nil, limit: Int? = nil, purpose: Purpose? = nil, startingAfter: String? = nil) {
                self.created = created
                self.endingBefore = endingBefore
                self.expand = expand
                self.limit = limit
                self.purpose = purpose
                self.startingAfter = startingAfter
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(created, forKey: "created", isDeepObject: true)
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(purpose, forKey: "purpose")
                encoder.encode(startingAfter, forKey: "starting_after")
                return encoder.items
            }
        }

        /// <p>To upload a file to Stripe, you’ll need to send a request of type <code>multipart/form-data</code>. The request should contain the file you would like to upload, as well as the parameters for creating a file.</p>
        /// 
        /// <p>All of Stripe’s officially supported Client libraries should have support for sending <code>multipart/form-data</code>.</p>
        public func post(_ body: Data) -> Request<StripeKit.File> {
            Request(method: "POST", url: path, body: body, id: "PostFiles")
        }
    }
}