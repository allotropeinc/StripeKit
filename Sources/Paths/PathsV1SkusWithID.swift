// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Skus {
    public func id(_ id: String) -> WithID {
        WithID(path: "\(path)/\(id)")
    }

    public struct WithID {
        /// Path: `/v1/skus/{id}`
        public let path: String

        /// <p>Retrieves the details of an existing SKU. Supply the unique SKU identifier from either a SKU creation request or from the product, and Stripe will return the corresponding SKU information.</p>
        public func get(expand: [String]? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetSkusId")
        }

        public struct GetResponse: Decodable {
            /// Stores representations of [stock keeping units](http://en.wikipedia.org/wiki/Stock_keeping_unit).
            /// SKUs describe specific product variations, taking into account any combination of: attributes,
            /// currency, and cost. For example, a product may be a T-shirt, whereas a specific SKU represents
            /// the `size: large`, `color: red` version of that shirt.
            /// 
            /// Can also be used to manage inventory.
            public var sku: StripeKit.Sku?
            public var deletedSku: StripeKit.DeletedSku?

            public init(sku: StripeKit.Sku? = nil, deletedSku: StripeKit.DeletedSku? = nil) {
                self.sku = sku
                self.deletedSku = deletedSku
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                self.sku = try? container.decode(StripeKit.Sku.self)
                self.deletedSku = try? container.decode(StripeKit.DeletedSku.self)
            }
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Updates the specific SKU by setting the values of the parameters passed. Any parameters not provided will be left unchanged.</p>
        /// 
        /// <p>Note that a SKU’s <code>attributes</code> are not editable. Instead, you would need to deactivate the existing SKU and create a new one with the new attribute values.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Sku> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostSkusId")
        }

        public struct PostRequest: Encodable {
            /// Whether this SKU is available for purchase.
            public var isActive: Bool?
            /// A dictionary of attributes and values for the attributes defined by the product. When specified, `attributes` will partially update the existing attributes dictionary on the product, with the postcondition that a value must be present for each attribute key on the product.
            public var attributes: [String: String]?
            /// Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
            public var currency: String?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// The URL of an image for this SKU, meant to be displayable to the customer.
            public var image: String?
            /// Inventory_update_specs
            ///
            /// Description of the SKU's inventory.
            public var inventory: Inventory?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// The dimensions of this SKU for shipping purposes.
            public var packageDimensions: PackageDimensions?
            /// The cost of the item as a positive integer in the smallest currency unit (that is, 100 cents to charge $1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
            public var price: Int?
            /// The ID of the product that this SKU should belong to. The product must exist, have the same set of attribute names as the SKU's current product, and be of type `good`.
            public var product: String?

            /// Inventory_update_specs
            ///
            /// Description of the SKU's inventory.
            public struct Inventory: Encodable {
                public var quantity: Int?
                public var type: `Type`?
                public var value: Value?

                public enum `Type`: String, Codable, CaseIterable {
                    case bucket
                    case finite
                    case infinite
                }

                public enum Value: String, Codable, CaseIterable {
                    case empty = ""
                    case inStock = "in_stock"
                    case limited
                    case outOfStock = "out_of_stock"
                }

                public init(quantity: Int? = nil, type: `Type`? = nil, value: Value? = nil) {
                    self.quantity = quantity
                    self.type = type
                    self.value = value
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(quantity, forKey: "quantity")
                    encoder.encode(type, forKey: "type")
                    encoder.encode(value, forKey: "value")
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

            /// The dimensions of this SKU for shipping purposes.
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

            public init(isActive: Bool? = nil, attributes: [String: String]? = nil, currency: String? = nil, expand: [String]? = nil, image: String? = nil, inventory: Inventory? = nil, metadata: Metadata? = nil, packageDimensions: PackageDimensions? = nil, price: Int? = nil, product: String? = nil) {
                self.isActive = isActive
                self.attributes = attributes
                self.currency = currency
                self.expand = expand
                self.image = image
                self.inventory = inventory
                self.metadata = metadata
                self.packageDimensions = packageDimensions
                self.price = price
                self.product = product
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(isActive, forKey: "active")
                encoder.encode(attributes, forKey: "attributes")
                encoder.encode(currency, forKey: "currency")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(image, forKey: "image")
                encoder.encode(inventory, forKey: "inventory")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(packageDimensions, forKey: "package_dimensions")
                encoder.encode(price, forKey: "price")
                encoder.encode(product, forKey: "product")
                return encoder.items
            }
        }

        /// <p>Delete a SKU. Deleting a SKU is only possible until it has been used in an order.</p>
        public var delete: Request<StripeKit.DeletedSku> {
            Request(method: "DELETE", url: path, id: "DeleteSkusId")
        }
    }
}
