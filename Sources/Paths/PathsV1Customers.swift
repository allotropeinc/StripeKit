// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths {
    public static var customers: Customers {
        Customers(path: "/v1/customers")
    }

    public struct Customers {
        /// Path: `/v1/customers`
        public let path: String

        /// <p>Returns a list of your customers. The customers are returned sorted by creation date, with the most recent customers appearing first.</p>
        public func get(parameters: GetParameters? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: parameters?.asQuery, id: "GetCustomers")
        }

        /// CustomerResourceCustomerList
        public struct GetResponse: Decodable {
            public var data: [StripeKit.Customer]
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

            public init(data: [StripeKit.Customer], hasMore: Bool, object: Object, url: String) {
                self.data = data
                self.hasMore = hasMore
                self.object = object
                self.url = url
            }

            public init(from decoder: Decoder) throws {
                let values = try decoder.container(keyedBy: StringCodingKey.self)
                self.data = try values.decode([StripeKit.Customer].self, forKey: "data")
                self.hasMore = try values.decode(Bool.self, forKey: "has_more")
                self.object = try values.decode(Object.self, forKey: "object")
                self.url = try values.decode(String.self, forKey: "url")
            }
        }

        public struct GetParameters {
            public var created: Created?
            public var email: String?
            public var endingBefore: String?
            public var expand: [String]?
            public var limit: Int?
            public var startingAfter: String?
            public var testClock: String?

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

            public init(created: Created? = nil, email: String? = nil, endingBefore: String? = nil, expand: [String]? = nil, limit: Int? = nil, startingAfter: String? = nil, testClock: String? = nil) {
                self.created = created
                self.email = email
                self.endingBefore = endingBefore
                self.expand = expand
                self.limit = limit
                self.startingAfter = startingAfter
                self.testClock = testClock
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(created, forKey: "created", isDeepObject: true)
                encoder.encode(email, forKey: "email")
                encoder.encode(endingBefore, forKey: "ending_before")
                encoder.encode(expand, forKey: "expand", isDeepObject: true)
                encoder.encode(limit, forKey: "limit")
                encoder.encode(startingAfter, forKey: "starting_after")
                encoder.encode(testClock, forKey: "test_clock")
                return encoder.items
            }
        }

        /// <p>Creates a new customer object.</p>
        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Customer> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostCustomers")
        }

        public struct PostRequest: Encodable {
            /// The customer's address.
            public var address: Address?
            /// An integer amount in cents (or local equivalent) that represents the customer's current balance, which affect the customer's future invoices. A negative amount represents a credit that decreases the amount due on an invoice; a positive amount increases the amount due on an invoice.
            public var balance: Int?
            /// Cash_balance_param
            ///
            /// Balance information and default balance settings for this customer.
            public var cashBalance: CashBalance?
            public var coupon: String?
            /// An arbitrary string that you can attach to a customer object. It is displayed alongside the customer in the dashboard.
            public var description: String?
            /// Customer's email address. It's displayed alongside the customer in your dashboard and can be useful for searching and tracking. This may be up to *512 characters*.
            public var email: String?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// The prefix for the customer used to generate unique invoice numbers. Must be 3–12 uppercase letters or numbers.
            public var invoicePrefix: String?
            /// Customer_param
            ///
            /// Default invoice settings for this customer.
            public var invoiceSettings: InvoiceSettings?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// The customer's full name or business name.
            public var name: String?
            /// The sequence to be used on the customer's next invoice. Defaults to 1.
            public var nextInvoiceSequence: Int?
            public var paymentMethod: String?
            /// The customer's phone number.
            public var phone: String?
            /// Customer's preferred languages, ordered by preference.
            public var preferredLocales: [String]?
            /// The API ID of a promotion code to apply to the customer. The customer will have a discount applied on all recurring payments. Charges you create through the API will not have the discount.
            public var promotionCode: String?
            /// The customer's shipping information. Appears on invoices emailed to this customer.
            public var shipping: Shipping?
            public var source: String?
            /// Tax_param
            ///
            /// Tax details about the customer.
            public var tax: Tax?
            /// The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
            public var taxExempt: TaxExempt?
            /// The customer's tax IDs.
            public var taxIDData: [TaxIDDatum]?
            /// ID of the test clock to attach to the customer.
            public var testClock: String?

            /// The customer's address.
            public struct Address: Encodable {
                /// Optional_fields_address
                public var a: A?
                public var b: B?

                /// Optional_fields_address
                public struct A: Encodable {
                    public var city: String?
                    public var country: String?
                    public var line1: String?
                    public var line2: String?
                    public var postalCode: String?
                    public var state: String?

                    public init(city: String? = nil, country: String? = nil, line1: String? = nil, line2: String? = nil, postalCode: String? = nil, state: String? = nil) {
                        self.city = city
                        self.country = country
                        self.line1 = line1
                        self.line2 = line2
                        self.postalCode = postalCode
                        self.state = state
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(city, forKey: "city")
                        encoder.encode(country, forKey: "country")
                        encoder.encode(line1, forKey: "line1")
                        encoder.encode(line2, forKey: "line2")
                        encoder.encode(postalCode, forKey: "postal_code")
                        encoder.encode(state, forKey: "state")
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

            /// Cash_balance_param
            ///
            /// Balance information and default balance settings for this customer.
            public struct CashBalance: Encodable {
                /// Balance_settings_param
                public var settings: Settings?

                /// Balance_settings_param
                public struct Settings: Encodable {
                    public var reconciliationMode: ReconciliationMode?

                    public enum ReconciliationMode: String, Codable, CaseIterable {
                        case automatic
                        case manual
                    }

                    public init(reconciliationMode: ReconciliationMode? = nil) {
                        self.reconciliationMode = reconciliationMode
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(reconciliationMode, forKey: "reconciliation_mode")
                        return encoder.items
                    }
                }

                public init(settings: Settings? = nil) {
                    self.settings = settings
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(settings, forKey: "settings")
                    return encoder.items
                }
            }

            /// Customer_param
            ///
            /// Default invoice settings for this customer.
            public struct InvoiceSettings: Encodable {
                public var customFields: CustomFields?
                public var defaultPaymentMethod: String?
                public var footer: String?
                public var renderingOptions: RenderingOptions?

                public struct CustomFields: Encodable {
                    public var placeholderItems: [PlaceholderItem]?
                    public var object: Object?

                    /// Custom_field_params
                    public struct PlaceholderItem: Encodable {
                        public var name: String
                        public var value: String

                        public init(name: String, value: String) {
                            self.name = name
                            self.value = value
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(name, forKey: "name")
                            encoder.encode(value, forKey: "value")
                            return encoder.items
                        }
                    }

                    public enum Object: String, Codable, CaseIterable {
                        case empty = ""
                    }

                    public init(placeholderItems: [PlaceholderItem]? = nil, object: Object? = nil) {
                        self.placeholderItems = placeholderItems
                        self.object = object
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(placeholderItems, forKey: "placeholderItems")
                        encoder.encode(object, forKey: "object")
                        return encoder.items
                    }
                }

                public struct RenderingOptions: Encodable {
                    /// Rendering_options_param
                    public var a: A?
                    public var b: B?

                    /// Rendering_options_param
                    public struct A: Encodable {
                        public var amountTaxDisplay: AmountTaxDisplay?

                        public enum AmountTaxDisplay: String, Codable, CaseIterable {
                            case empty = ""
                            case excludeTax = "exclude_tax"
                            case includeInclusiveTax = "include_inclusive_tax"
                        }

                        public init(amountTaxDisplay: AmountTaxDisplay? = nil) {
                            self.amountTaxDisplay = amountTaxDisplay
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(amountTaxDisplay, forKey: "amount_tax_display")
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

                public init(customFields: CustomFields? = nil, defaultPaymentMethod: String? = nil, footer: String? = nil, renderingOptions: RenderingOptions? = nil) {
                    self.customFields = customFields
                    self.defaultPaymentMethod = defaultPaymentMethod
                    self.footer = footer
                    self.renderingOptions = renderingOptions
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(customFields, forKey: "custom_fields")
                    encoder.encode(defaultPaymentMethod, forKey: "default_payment_method")
                    encoder.encode(footer, forKey: "footer")
                    encoder.encode(renderingOptions, forKey: "rendering_options")
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

            /// The customer's shipping information. Appears on invoices emailed to this customer.
            public struct Shipping: Encodable {
                /// Customer_shipping
                public var a: A?
                public var b: B?

                /// Customer_shipping
                public struct A: Encodable {
                    /// Optional_fields_address
                    public var address: Address
                    public var name: String
                    public var phone: String?

                    /// Optional_fields_address
                    public struct Address: Encodable {
                        public var city: String?
                        public var country: String?
                        public var line1: String?
                        public var line2: String?
                        public var postalCode: String?
                        public var state: String?

                        public init(city: String? = nil, country: String? = nil, line1: String? = nil, line2: String? = nil, postalCode: String? = nil, state: String? = nil) {
                            self.city = city
                            self.country = country
                            self.line1 = line1
                            self.line2 = line2
                            self.postalCode = postalCode
                            self.state = state
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(city, forKey: "city")
                            encoder.encode(country, forKey: "country")
                            encoder.encode(line1, forKey: "line1")
                            encoder.encode(line2, forKey: "line2")
                            encoder.encode(postalCode, forKey: "postal_code")
                            encoder.encode(state, forKey: "state")
                            return encoder.items
                        }
                    }

                    public init(address: Address, name: String, phone: String? = nil) {
                        self.address = address
                        self.name = name
                        self.phone = phone
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(address, forKey: "address")
                        encoder.encode(name, forKey: "name")
                        encoder.encode(phone, forKey: "phone")
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

            /// Tax_param
            ///
            /// Tax details about the customer.
            public struct Tax: Encodable {
                public var ipAddress: IpAddress?

                public struct IpAddress: Encodable {
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

                public init(ipAddress: IpAddress? = nil) {
                    self.ipAddress = ipAddress
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(ipAddress, forKey: "ip_address")
                    return encoder.items
                }
            }

            /// The customer's tax exemption. One of `none`, `exempt`, or `reverse`.
            public enum TaxExempt: String, Codable, CaseIterable {
                case empty = ""
                case exempt
                case `none`
                case reverse
            }

            /// Data_params
            public struct TaxIDDatum: Encodable {
                public var type: `Type`
                public var value: String

                public enum `Type`: String, Codable, CaseIterable {
                    case aeTrn = "ae_trn"
                    case auAbn = "au_abn"
                    case auArn = "au_arn"
                    case bgUic = "bg_uic"
                    case brCnpj = "br_cnpj"
                    case brCpf = "br_cpf"
                    case caBn = "ca_bn"
                    case caGstHst = "ca_gst_hst"
                    case caPstBc = "ca_pst_bc"
                    case caPstMb = "ca_pst_mb"
                    case caPstSk = "ca_pst_sk"
                    case caQst = "ca_qst"
                    case chVat = "ch_vat"
                    case clTin = "cl_tin"
                    case esCif = "es_cif"
                    case euOssVat = "eu_oss_vat"
                    case euVat = "eu_vat"
                    case gbVat = "gb_vat"
                    case geVat = "ge_vat"
                    case hkBr = "hk_br"
                    case huTin = "hu_tin"
                    case idNpwp = "id_npwp"
                    case ilVat = "il_vat"
                    case inGst = "in_gst"
                    case isVat = "is_vat"
                    case jpCn = "jp_cn"
                    case jpRn = "jp_rn"
                    case krBrn = "kr_brn"
                    case liUid = "li_uid"
                    case mxRfc = "mx_rfc"
                    case myFrp = "my_frp"
                    case myItn = "my_itn"
                    case mySst = "my_sst"
                    case noVat = "no_vat"
                    case nzGst = "nz_gst"
                    case ruInn = "ru_inn"
                    case ruKpp = "ru_kpp"
                    case saVat = "sa_vat"
                    case sgGst = "sg_gst"
                    case sgUen = "sg_uen"
                    case siTin = "si_tin"
                    case thVat = "th_vat"
                    case twVat = "tw_vat"
                    case uaVat = "ua_vat"
                    case usEin = "us_ein"
                    case zaVat = "za_vat"
                }

                public init(type: `Type`, value: String) {
                    self.type = type
                    self.value = value
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(type, forKey: "type")
                    encoder.encode(value, forKey: "value")
                    return encoder.items
                }
            }

            public init(address: Address? = nil, balance: Int? = nil, cashBalance: CashBalance? = nil, coupon: String? = nil, description: String? = nil, email: String? = nil, expand: [String]? = nil, invoicePrefix: String? = nil, invoiceSettings: InvoiceSettings? = nil, metadata: Metadata? = nil, name: String? = nil, nextInvoiceSequence: Int? = nil, paymentMethod: String? = nil, phone: String? = nil, preferredLocales: [String]? = nil, promotionCode: String? = nil, shipping: Shipping? = nil, source: String? = nil, tax: Tax? = nil, taxExempt: TaxExempt? = nil, taxIDData: [TaxIDDatum]? = nil, testClock: String? = nil) {
                self.address = address
                self.balance = balance
                self.cashBalance = cashBalance
                self.coupon = coupon
                self.description = description
                self.email = email
                self.expand = expand
                self.invoicePrefix = invoicePrefix
                self.invoiceSettings = invoiceSettings
                self.metadata = metadata
                self.name = name
                self.nextInvoiceSequence = nextInvoiceSequence
                self.paymentMethod = paymentMethod
                self.phone = phone
                self.preferredLocales = preferredLocales
                self.promotionCode = promotionCode
                self.shipping = shipping
                self.source = source
                self.tax = tax
                self.taxExempt = taxExempt
                self.taxIDData = taxIDData
                self.testClock = testClock
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(address, forKey: "address")
                encoder.encode(balance, forKey: "balance")
                encoder.encode(cashBalance, forKey: "cash_balance")
                encoder.encode(coupon, forKey: "coupon")
                encoder.encode(description, forKey: "description")
                encoder.encode(email, forKey: "email")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(invoicePrefix, forKey: "invoice_prefix")
                encoder.encode(invoiceSettings, forKey: "invoice_settings")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(name, forKey: "name")
                encoder.encode(nextInvoiceSequence, forKey: "next_invoice_sequence")
                encoder.encode(paymentMethod, forKey: "payment_method")
                encoder.encode(phone, forKey: "phone")
                encoder.encode(preferredLocales, forKey: "preferred_locales")
                encoder.encode(promotionCode, forKey: "promotion_code")
                encoder.encode(shipping, forKey: "shipping")
                encoder.encode(source, forKey: "source")
                encoder.encode(tax, forKey: "tax")
                encoder.encode(taxExempt, forKey: "tax_exempt")
                encoder.encode(taxIDData, forKey: "tax_id_data")
                encoder.encode(testClock, forKey: "test_clock")
                return encoder.items
            }
        }
    }
}
