// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Charges.WithCharge {
    public var dispute: Dispute {
        Dispute(path: path + "/dispute")
    }

    public struct Dispute {
        /// Path: `/v1/charges/{charge}/dispute`
        public let path: String

        /// <p>Retrieve a dispute for a specified charge.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.Dispute> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetChargesChargeDispute")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        public func post(_ body: PostRequest? = nil) -> Request<StripeKit.Dispute> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostChargesChargeDispute")
        }

        public struct PostRequest: Encodable {
            /// Dispute_evidence_params
            ///
            /// Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
            public var evidence: Evidence?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
            public var metadata: Metadata?
            /// Whether to immediately submit evidence to the bank. If `false`, evidence is staged on the dispute. Staged evidence is visible in the API and Dashboard, and can be submitted to the bank by making another request with this attribute set to `true` (the default).
            public var isSubmit: Bool?

            /// Dispute_evidence_params
            ///
            /// Evidence to upload, to respond to a dispute. Updating any field in the hash will submit all fields in the hash for review. The combined character count of all fields is limited to 150,000.
            public struct Evidence: Encodable {
                public var accessActivityLog: String?
                public var billingAddress: String?
                public var cancellationPolicy: String?
                public var cancellationPolicyDisclosure: String?
                public var cancellationRebuttal: String?
                public var customerCommunication: String?
                public var customerEmailAddress: String?
                public var customerName: String?
                public var customerPurchaseIp: String?
                public var customerSignature: String?
                public var duplicateChargeDocumentation: String?
                public var duplicateChargeExplanation: String?
                public var duplicateChargeID: String?
                public var productDescription: String?
                public var receipt: String?
                public var refundPolicy: String?
                public var refundPolicyDisclosure: String?
                public var refundRefusalExplanation: String?
                public var serviceDate: String?
                public var serviceDocumentation: String?
                public var shippingAddress: String?
                public var shippingCarrier: String?
                public var shippingDate: String?
                public var shippingDocumentation: String?
                public var shippingTrackingNumber: String?
                public var uncategorizedFile: String?
                public var uncategorizedText: String?

                public init(accessActivityLog: String? = nil, billingAddress: String? = nil, cancellationPolicy: String? = nil, cancellationPolicyDisclosure: String? = nil, cancellationRebuttal: String? = nil, customerCommunication: String? = nil, customerEmailAddress: String? = nil, customerName: String? = nil, customerPurchaseIp: String? = nil, customerSignature: String? = nil, duplicateChargeDocumentation: String? = nil, duplicateChargeExplanation: String? = nil, duplicateChargeID: String? = nil, productDescription: String? = nil, receipt: String? = nil, refundPolicy: String? = nil, refundPolicyDisclosure: String? = nil, refundRefusalExplanation: String? = nil, serviceDate: String? = nil, serviceDocumentation: String? = nil, shippingAddress: String? = nil, shippingCarrier: String? = nil, shippingDate: String? = nil, shippingDocumentation: String? = nil, shippingTrackingNumber: String? = nil, uncategorizedFile: String? = nil, uncategorizedText: String? = nil) {
                    self.accessActivityLog = accessActivityLog
                    self.billingAddress = billingAddress
                    self.cancellationPolicy = cancellationPolicy
                    self.cancellationPolicyDisclosure = cancellationPolicyDisclosure
                    self.cancellationRebuttal = cancellationRebuttal
                    self.customerCommunication = customerCommunication
                    self.customerEmailAddress = customerEmailAddress
                    self.customerName = customerName
                    self.customerPurchaseIp = customerPurchaseIp
                    self.customerSignature = customerSignature
                    self.duplicateChargeDocumentation = duplicateChargeDocumentation
                    self.duplicateChargeExplanation = duplicateChargeExplanation
                    self.duplicateChargeID = duplicateChargeID
                    self.productDescription = productDescription
                    self.receipt = receipt
                    self.refundPolicy = refundPolicy
                    self.refundPolicyDisclosure = refundPolicyDisclosure
                    self.refundRefusalExplanation = refundRefusalExplanation
                    self.serviceDate = serviceDate
                    self.serviceDocumentation = serviceDocumentation
                    self.shippingAddress = shippingAddress
                    self.shippingCarrier = shippingCarrier
                    self.shippingDate = shippingDate
                    self.shippingDocumentation = shippingDocumentation
                    self.shippingTrackingNumber = shippingTrackingNumber
                    self.uncategorizedFile = uncategorizedFile
                    self.uncategorizedText = uncategorizedText
                }

                public var asQuery: [(String, String?)] {
                    let encoder = URLQueryEncoder()
                    encoder.encode(accessActivityLog, forKey: "access_activity_log")
                    encoder.encode(billingAddress, forKey: "billing_address")
                    encoder.encode(cancellationPolicy, forKey: "cancellation_policy")
                    encoder.encode(cancellationPolicyDisclosure, forKey: "cancellation_policy_disclosure")
                    encoder.encode(cancellationRebuttal, forKey: "cancellation_rebuttal")
                    encoder.encode(customerCommunication, forKey: "customer_communication")
                    encoder.encode(customerEmailAddress, forKey: "customer_email_address")
                    encoder.encode(customerName, forKey: "customer_name")
                    encoder.encode(customerPurchaseIp, forKey: "customer_purchase_ip")
                    encoder.encode(customerSignature, forKey: "customer_signature")
                    encoder.encode(duplicateChargeDocumentation, forKey: "duplicate_charge_documentation")
                    encoder.encode(duplicateChargeExplanation, forKey: "duplicate_charge_explanation")
                    encoder.encode(duplicateChargeID, forKey: "duplicate_charge_id")
                    encoder.encode(productDescription, forKey: "product_description")
                    encoder.encode(receipt, forKey: "receipt")
                    encoder.encode(refundPolicy, forKey: "refund_policy")
                    encoder.encode(refundPolicyDisclosure, forKey: "refund_policy_disclosure")
                    encoder.encode(refundRefusalExplanation, forKey: "refund_refusal_explanation")
                    encoder.encode(serviceDate, forKey: "service_date")
                    encoder.encode(serviceDocumentation, forKey: "service_documentation")
                    encoder.encode(shippingAddress, forKey: "shipping_address")
                    encoder.encode(shippingCarrier, forKey: "shipping_carrier")
                    encoder.encode(shippingDate, forKey: "shipping_date")
                    encoder.encode(shippingDocumentation, forKey: "shipping_documentation")
                    encoder.encode(shippingTrackingNumber, forKey: "shipping_tracking_number")
                    encoder.encode(uncategorizedFile, forKey: "uncategorized_file")
                    encoder.encode(uncategorizedText, forKey: "uncategorized_text")
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

            public init(evidence: Evidence? = nil, expand: [String]? = nil, metadata: Metadata? = nil, isSubmit: Bool? = nil) {
                self.evidence = evidence
                self.expand = expand
                self.metadata = metadata
                self.isSubmit = isSubmit
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(evidence, forKey: "evidence")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(metadata, forKey: "metadata")
                encoder.encode(isSubmit, forKey: "submit")
                return encoder.items
            }
        }
    }
}
