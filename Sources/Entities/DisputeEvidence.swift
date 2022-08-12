// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct DisputeEvidence: Codable {
    /// Any server or activity logs showing proof that the customer accessed or downloaded the purchased digital product. This information should include IP addresses, corresponding timestamps, and any detailed recorded activity.
    public var accessActivityLog: String?
    /// The billing address provided by the customer.
    public var billingAddress: String?
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your subscription cancellation policy, as shown to the customer.
    public var cancellationPolicy: CancellationPolicy?
    /// An explanation of how and when the customer was shown your refund policy prior to purchase.
    public var cancellationPolicyDisclosure: String?
    /// A justification for why the customer's subscription was not canceled.
    public var cancellationRebuttal: String?
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
    public var customerCommunication: CustomerCommunication?
    /// The email address of the customer.
    public var customerEmailAddress: String?
    /// The name of the customer.
    public var customerName: String?
    /// The IP address that the customer used when making the purchase.
    public var customerPurchaseIp: String?
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A relevant document or contract showing the customer's signature.
    public var customerSignature: CustomerSignature?
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
    public var duplicateChargeDocumentation: DuplicateChargeDocumentation?
    /// An explanation of the difference between the disputed charge versus the prior charge that appears to be a duplicate.
    public var duplicateChargeExplanation: String?
    /// The Stripe ID for the prior charge which appears to be a duplicate of the disputed charge.
    public var duplicateChargeID: String?
    /// A description of the product or service that was sold.
    public var productDescription: String?
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
    public var receipt: Receipt?
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your refund policy, as shown to the customer.
    public var refundPolicy: RefundPolicy?
    /// Documentation demonstrating that the customer was shown your refund policy prior to purchase.
    public var refundPolicyDisclosure: String?
    /// A justification for why the customer is not entitled to a refund.
    public var refundRefusalExplanation: String?
    /// The date on which the customer received or began receiving the purchased service, in a clear human-readable format.
    public var serviceDate: String?
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
    public var serviceDocumentation: ServiceDocumentation?
    /// The address to which a physical product was shipped. You should try to include as complete address information as possible.
    public var shippingAddress: String?
    /// The delivery service that shipped a physical product, such as Fedex, UPS, USPS, etc. If multiple carriers were used for this purchase, please separate them with commas.
    public var shippingCarrier: String?
    /// The date on which a physical product began its route to the shipping address, in a clear human-readable format.
    public var shippingDate: String?
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer's full shipping address, if possible.
    public var shippingDocumentation: ShippingDocumentation?
    /// The tracking number for a physical product, obtained from the delivery service. If multiple tracking numbers were generated for this purchase, please separate them with commas.
    public var shippingTrackingNumber: String?
    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any additional evidence or statements.
    public var uncategorizedFile: UncategorizedFile?
    /// Any additional evidence or statements.
    public var uncategorizedText: String?

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your subscription cancellation policy, as shown to the customer.
    public struct CancellationPolicy: Codable {
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

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any communication with the customer that you feel is relevant to your case. Examples include emails proving that the customer received the product or service, or demonstrating their use of or satisfaction with the product or service.
    public struct CustomerCommunication: Codable {
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

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A relevant document or contract showing the customer's signature.
    public struct CustomerSignature: Codable {
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

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation for the prior charge that can uniquely identify the charge, such as a receipt, shipping label, work order, etc. This document should be paired with a similar document from the disputed payment that proves the two payments are separate.
    public struct DuplicateChargeDocumentation: Codable {
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

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any receipt or message sent to the customer notifying them of the charge.
    public struct Receipt: Codable {
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

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Your refund policy, as shown to the customer.
    public struct RefundPolicy: Codable {
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

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a service was provided to the customer. This could include a copy of a signed contract, work order, or other form of written agreement.
    public struct ServiceDocumentation: Codable {
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

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Documentation showing proof that a product was shipped to the customer at the same address the customer provided to you. This could include a copy of the shipment receipt, shipping label, etc. It should show the customer's full shipping address, if possible.
    public struct ShippingDocumentation: Codable {
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

    /// (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Any additional evidence or statements.
    public struct UncategorizedFile: Codable {
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

    public init(accessActivityLog: String? = nil, billingAddress: String? = nil, cancellationPolicy: CancellationPolicy? = nil, cancellationPolicyDisclosure: String? = nil, cancellationRebuttal: String? = nil, customerCommunication: CustomerCommunication? = nil, customerEmailAddress: String? = nil, customerName: String? = nil, customerPurchaseIp: String? = nil, customerSignature: CustomerSignature? = nil, duplicateChargeDocumentation: DuplicateChargeDocumentation? = nil, duplicateChargeExplanation: String? = nil, duplicateChargeID: String? = nil, productDescription: String? = nil, receipt: Receipt? = nil, refundPolicy: RefundPolicy? = nil, refundPolicyDisclosure: String? = nil, refundRefusalExplanation: String? = nil, serviceDate: String? = nil, serviceDocumentation: ServiceDocumentation? = nil, shippingAddress: String? = nil, shippingCarrier: String? = nil, shippingDate: String? = nil, shippingDocumentation: ShippingDocumentation? = nil, shippingTrackingNumber: String? = nil, uncategorizedFile: UncategorizedFile? = nil, uncategorizedText: String? = nil) {
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

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.accessActivityLog = try values.decodeIfPresent(String.self, forKey: "access_activity_log")
        self.billingAddress = try values.decodeIfPresent(String.self, forKey: "billing_address")
        self.cancellationPolicy = try values.decodeIfPresent(CancellationPolicy.self, forKey: "cancellation_policy")
        self.cancellationPolicyDisclosure = try values.decodeIfPresent(String.self, forKey: "cancellation_policy_disclosure")
        self.cancellationRebuttal = try values.decodeIfPresent(String.self, forKey: "cancellation_rebuttal")
        self.customerCommunication = try values.decodeIfPresent(CustomerCommunication.self, forKey: "customer_communication")
        self.customerEmailAddress = try values.decodeIfPresent(String.self, forKey: "customer_email_address")
        self.customerName = try values.decodeIfPresent(String.self, forKey: "customer_name")
        self.customerPurchaseIp = try values.decodeIfPresent(String.self, forKey: "customer_purchase_ip")
        self.customerSignature = try values.decodeIfPresent(CustomerSignature.self, forKey: "customer_signature")
        self.duplicateChargeDocumentation = try values.decodeIfPresent(DuplicateChargeDocumentation.self, forKey: "duplicate_charge_documentation")
        self.duplicateChargeExplanation = try values.decodeIfPresent(String.self, forKey: "duplicate_charge_explanation")
        self.duplicateChargeID = try values.decodeIfPresent(String.self, forKey: "duplicate_charge_id")
        self.productDescription = try values.decodeIfPresent(String.self, forKey: "product_description")
        self.receipt = try values.decodeIfPresent(Receipt.self, forKey: "receipt")
        self.refundPolicy = try values.decodeIfPresent(RefundPolicy.self, forKey: "refund_policy")
        self.refundPolicyDisclosure = try values.decodeIfPresent(String.self, forKey: "refund_policy_disclosure")
        self.refundRefusalExplanation = try values.decodeIfPresent(String.self, forKey: "refund_refusal_explanation")
        self.serviceDate = try values.decodeIfPresent(String.self, forKey: "service_date")
        self.serviceDocumentation = try values.decodeIfPresent(ServiceDocumentation.self, forKey: "service_documentation")
        self.shippingAddress = try values.decodeIfPresent(String.self, forKey: "shipping_address")
        self.shippingCarrier = try values.decodeIfPresent(String.self, forKey: "shipping_carrier")
        self.shippingDate = try values.decodeIfPresent(String.self, forKey: "shipping_date")
        self.shippingDocumentation = try values.decodeIfPresent(ShippingDocumentation.self, forKey: "shipping_documentation")
        self.shippingTrackingNumber = try values.decodeIfPresent(String.self, forKey: "shipping_tracking_number")
        self.uncategorizedFile = try values.decodeIfPresent(UncategorizedFile.self, forKey: "uncategorized_file")
        self.uncategorizedText = try values.decodeIfPresent(String.self, forKey: "uncategorized_text")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(accessActivityLog, forKey: "access_activity_log")
        try values.encodeIfPresent(billingAddress, forKey: "billing_address")
        try values.encodeIfPresent(cancellationPolicy, forKey: "cancellation_policy")
        try values.encodeIfPresent(cancellationPolicyDisclosure, forKey: "cancellation_policy_disclosure")
        try values.encodeIfPresent(cancellationRebuttal, forKey: "cancellation_rebuttal")
        try values.encodeIfPresent(customerCommunication, forKey: "customer_communication")
        try values.encodeIfPresent(customerEmailAddress, forKey: "customer_email_address")
        try values.encodeIfPresent(customerName, forKey: "customer_name")
        try values.encodeIfPresent(customerPurchaseIp, forKey: "customer_purchase_ip")
        try values.encodeIfPresent(customerSignature, forKey: "customer_signature")
        try values.encodeIfPresent(duplicateChargeDocumentation, forKey: "duplicate_charge_documentation")
        try values.encodeIfPresent(duplicateChargeExplanation, forKey: "duplicate_charge_explanation")
        try values.encodeIfPresent(duplicateChargeID, forKey: "duplicate_charge_id")
        try values.encodeIfPresent(productDescription, forKey: "product_description")
        try values.encodeIfPresent(receipt, forKey: "receipt")
        try values.encodeIfPresent(refundPolicy, forKey: "refund_policy")
        try values.encodeIfPresent(refundPolicyDisclosure, forKey: "refund_policy_disclosure")
        try values.encodeIfPresent(refundRefusalExplanation, forKey: "refund_refusal_explanation")
        try values.encodeIfPresent(serviceDate, forKey: "service_date")
        try values.encodeIfPresent(serviceDocumentation, forKey: "service_documentation")
        try values.encodeIfPresent(shippingAddress, forKey: "shipping_address")
        try values.encodeIfPresent(shippingCarrier, forKey: "shipping_carrier")
        try values.encodeIfPresent(shippingDate, forKey: "shipping_date")
        try values.encodeIfPresent(shippingDocumentation, forKey: "shipping_documentation")
        try values.encodeIfPresent(shippingTrackingNumber, forKey: "shipping_tracking_number")
        try values.encodeIfPresent(uncategorizedFile, forKey: "uncategorized_file")
        try values.encodeIfPresent(uncategorizedText, forKey: "uncategorized_text")
    }
}
