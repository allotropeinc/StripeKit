// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

/// Result from a document check
public struct GelatoDocumentReport: Codable {
    /// Address as it appears in the document.
    public var address: Address?
    /// Date of birth as it appears in the document.
    public var dob: GelatoDataDocumentReportDateOfBirth?
    /// Details on the verification error. Present when status is `unverified`.
    public var error: GelatoDocumentReportError?
    /// Expiration date of the document.
    public var expirationDate: GelatoDataDocumentReportExpirationDate?
    /// Array of [File](https://stripe.com/docs/api/files) ids containing images for this document.
    public var files: [String]?
    /// First name as it appears in the document.
    public var firstName: String?
    /// Issued date of the document.
    public var issuedDate: GelatoDataDocumentReportIssuedDate?
    /// Issuing country of the document.
    public var issuingCountry: String?
    /// Last name as it appears in the document.
    public var lastName: String?
    /// Document ID number.
    public var number: String?
    /// Status of this `document` check.
    public var status: Status
    /// Type of the document.
    public var type: `Type`?

    /// Status of this `document` check.
    public enum Status: String, Codable, CaseIterable {
        case unverified
        case verified
    }

    /// Type of the document.
    public enum `Type`: String, Codable, CaseIterable {
        case drivingLicense = "driving_license"
        case idCard = "id_card"
        case passport
    }

    public init(address: Address? = nil, dob: GelatoDataDocumentReportDateOfBirth? = nil, error: GelatoDocumentReportError? = nil, expirationDate: GelatoDataDocumentReportExpirationDate? = nil, files: [String]? = nil, firstName: String? = nil, issuedDate: GelatoDataDocumentReportIssuedDate? = nil, issuingCountry: String? = nil, lastName: String? = nil, number: String? = nil, status: Status, type: `Type`? = nil) {
        self.address = address
        self.dob = dob
        self.error = error
        self.expirationDate = expirationDate
        self.files = files
        self.firstName = firstName
        self.issuedDate = issuedDate
        self.issuingCountry = issuingCountry
        self.lastName = lastName
        self.number = number
        self.status = status
        self.type = type
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.address = try values.decodeIfPresent(Address.self, forKey: "address")
        self.dob = try values.decodeIfPresent(GelatoDataDocumentReportDateOfBirth.self, forKey: "dob")
        self.error = try values.decodeIfPresent(GelatoDocumentReportError.self, forKey: "error")
        self.expirationDate = try values.decodeIfPresent(GelatoDataDocumentReportExpirationDate.self, forKey: "expiration_date")
        self.files = try values.decodeIfPresent([String].self, forKey: "files")
        self.firstName = try values.decodeIfPresent(String.self, forKey: "first_name")
        self.issuedDate = try values.decodeIfPresent(GelatoDataDocumentReportIssuedDate.self, forKey: "issued_date")
        self.issuingCountry = try values.decodeIfPresent(String.self, forKey: "issuing_country")
        self.lastName = try values.decodeIfPresent(String.self, forKey: "last_name")
        self.number = try values.decodeIfPresent(String.self, forKey: "number")
        self.status = try values.decode(Status.self, forKey: "status")
        self.type = try values.decodeIfPresent(`Type`.self, forKey: "type")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(address, forKey: "address")
        try values.encodeIfPresent(dob, forKey: "dob")
        try values.encodeIfPresent(error, forKey: "error")
        try values.encodeIfPresent(expirationDate, forKey: "expiration_date")
        try values.encodeIfPresent(files, forKey: "files")
        try values.encodeIfPresent(firstName, forKey: "first_name")
        try values.encodeIfPresent(issuedDate, forKey: "issued_date")
        try values.encodeIfPresent(issuingCountry, forKey: "issuing_country")
        try values.encodeIfPresent(lastName, forKey: "last_name")
        try values.encodeIfPresent(number, forKey: "number")
        try values.encode(status, forKey: "status")
        try values.encodeIfPresent(type, forKey: "type")
    }
}