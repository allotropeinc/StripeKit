// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Products {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/products/{id}`
        public let path: String

        /// <p>Retrieves the details of an existing product. Supply the unique product ID from either a product creation request or the product list, and Stripe will return the corresponding product information.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.Product> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetProductsId")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Updates the specific product by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Product> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostProductsId")
        }

        public struct PostRequest: Encodable {
            /// Whether the product is available for purchase.
            public var isActive: Bool?
            /// The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
            public var defaultPrice: String?
            /// The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
            public var description: String?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
            public var images: Images?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// The product's name, meant to be displayable to the customer.
            public var name: String?
            /// The dimensions of this product for shipping purposes.
            public var packageDimensions: PackageDimensions?
            /// Whether this product is shipped (i.e., physical goods).
            public var isShippable: Bool?
            /// An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.
            /// 
            /// This may be up to 22 characters. The statement description may not include `<`, `>`, `\`, `"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.
            ///  It must contain at least one letter. May only be set if `type=service`.
            public var statementDescriptor: String?
            /// A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
            public var taxCode: TaxCode?
            /// A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions. May only be set if `type=service`.
            public var unitLabel: String?
            /// A URL of a publicly-accessible webpage for this product.
            public var url: URL?

            /// A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
            public struct Images: Encodable {
                public var strings: [String]?
                public var object: Object?

                public enum Object: String, Codable, CaseIterable {
                    case empty = ""
                }

                public init(strings: [String]? = nil, object: Object? = nil) {
                    self.strings = strings
                    self.object = object
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(strings, forKey: "strings")
                    encoder.encode(object, forKey: "object")
                    return encoder.items
                }
            }

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

            /// The dimensions of this product for shipping purposes.
            public struct PackageDimensions: Encodable {
                /// Package_dimensions_specs
                public var a: A?
                public var b: B?

                /// Package_dimensions_specs
                public struct A: Encodable {
                    public var height: Double
                    public var length: Double
                    public var weight: Double
                    public var width: Double

                    public init(height: Double, length: Double, weight: Double, width: Double) {
                        self.height = height
                        self.length = length
                        self.weight = weight
                        self.width = width
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(height, forKey: "height")
                        encoder.encode(length, forKey: "length")
                        encoder.encode(weight, forKey: "weight")
                        encoder.encode(width, forKey: "width")
                        return encoder.items
                    }
                }

                public enum B: String, Codable, CaseIterable {
                    case empty = ""
                }

                public init(a: A? = nil, b: B? = nil) {
                    self.a = a
                    self.b = b
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(a, forKey: "a")
                    encoder.encode(b, forKey: "b")
                    return encoder.items
                }
            }

            /// A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
            public struct TaxCode: Encodable {
                public var string: String?
                public var object: Object?

                public enum Object: String, Codable, CaseIterable {
                    case empty = ""
                }

                public init(string: String? = nil, object: Object? = nil) {
                    self.string = string
                    self.object = object
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(string, forKey: "string")
                    encoder.encode(object, forKey: "object")
                    return encoder.items
                }
            }

            /// A URL of a publicly-accessible webpage for this product.
            public struct URL: Encodable {
                public var string: String?
                public var object: Object?

                public enum Object: String, Codable, CaseIterable {
                    case empty = ""
                }

                public init(string: String? = nil, object: Object? = nil) {
                    self.string = string
                    self.object = object
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(string, forKey: "string")
                    encoder.encode(object, forKey: "object")
                    return encoder.items
                }
            }

            public init(isActive: Bool? = nil, defaultPrice: String? = nil, description: String? = nil, expand: [String]? = nil, images: Images? = nil, metadata: Metadata? = nil, name: String? = nil, packageDimensions: PackageDimensions? = nil, isShippable: Bool? = nil, statementDescriptor: String? = nil, taxCode: TaxCode? = nil, unitLabel: String? = nil, url: URL? = nil) {
                self.isActive = isActive
                self.defaultPrice = defaultPrice
                self.description = description
                self.expand = expand
                self.images = images
                self.metadata = metadata
                self.name = name
                self.packageDimensions = packageDimensions
                self.isShippable = isShippable
                self.statementDescriptor = statementDescriptor
                self.taxCode = taxCode
                self.unitLabel = unitLabel
                self.url = url
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isActive, forKey: "active")
                encoder.encode(defaultPrice, forKey: "default_price")
                encoder.encode(description, forKey: "description")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(images, forKey: "images")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(name, forKey: "name")
                encoder.encode(packageDimensions, forKey: "package_dimensions")
                encoder.encode(isShippable, forKey: "shippable")
                encoder.encode(statementDescriptor, forKey: "statement_descriptor")
                encoder.encode(taxCode, forKey: "tax_code")
                encoder.encode(unitLabel, forKey: "unit_label")
                encoder.encode(url, forKey: "url")
                return encoder.items
            }
        }

        /// <p>Delete a product. Deleting a product is only possible if it has no prices associated with it. Additionally, deleting a product with <code>type=good</code> is only possible if it has no SKUs associated with it.</p>
        public var delete: Request<StripeKit.DeletedProduct> {
            Request(method: "DELETE", url: path, id: "DeleteProductsId")
        }
    }
}