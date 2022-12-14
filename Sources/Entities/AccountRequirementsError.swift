// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct AccountRequirementsError: Codable {
    /// The code for the type of error.
    public var code: Code
    /// An informative message that indicates the error type and provides additional details about the error.
    public var reason: String
    /// The specific user onboarding requirement field (in the requirements hash) that needs to be resolved.
    public var requirement: String

    /// The code for the type of error.
    public enum Code: String, Codable, CaseIterable {
        case invalidAddressCityStatePostalCode = "invalid_address_city_state_postal_code"
        case invalidStreetAddress = "invalid_street_address"
        case invalidTosAcceptance = "invalid_tos_acceptance"
        case invalidValueOther = "invalid_value_other"
        case verificationDocumentAddressMismatch = "verification_document_address_mismatch"
        case verificationDocumentAddressMissing = "verification_document_address_missing"
        case verificationDocumentCorrupt = "verification_document_corrupt"
        case verificationDocumentCountryNotSupported = "verification_document_country_not_supported"
        case verificationDocumentDobMismatch = "verification_document_dob_mismatch"
        case verificationDocumentDuplicateType = "verification_document_duplicate_type"
        case verificationDocumentExpired = "verification_document_expired"
        case verificationDocumentFailedCopy = "verification_document_failed_copy"
        case verificationDocumentFailedGreyscale = "verification_document_failed_greyscale"
        case verificationDocumentFailedOther = "verification_document_failed_other"
        case verificationDocumentFailedTestMode = "verification_document_failed_test_mode"
        case verificationDocumentFraudulent = "verification_document_fraudulent"
        case verificationDocumentIDNumberMismatch = "verification_document_id_number_mismatch"
        case verificationDocumentIDNumberMissing = "verification_document_id_number_missing"
        case verificationDocumentIncomplete = "verification_document_incomplete"
        case verificationDocumentInvalid = "verification_document_invalid"
        case verificationDocumentIssueOrExpiryDateMissing = "verification_document_issue_or_expiry_date_missing"
        case verificationDocumentManipulated = "verification_document_manipulated"
        case verificationDocumentMissingBack = "verification_document_missing_back"
        case verificationDocumentMissingFront = "verification_document_missing_front"
        case verificationDocumentNameMismatch = "verification_document_name_mismatch"
        case verificationDocumentNameMissing = "verification_document_name_missing"
        case verificationDocumentNationalityMismatch = "verification_document_nationality_mismatch"
        case verificationDocumentNotReadable = "verification_document_not_readable"
        case verificationDocumentNotSigned = "verification_document_not_signed"
        case verificationDocumentNotUploaded = "verification_document_not_uploaded"
        case verificationDocumentPhotoMismatch = "verification_document_photo_mismatch"
        case verificationDocumentTooLarge = "verification_document_too_large"
        case verificationDocumentTypeNotSupported = "verification_document_type_not_supported"
        case verificationFailedAddressMatch = "verification_failed_address_match"
        case verificationFailedBusinessIecNumber = "verification_failed_business_iec_number"
        case verificationFailedDocumentMatch = "verification_failed_document_match"
        case verificationFailedIDNumberMatch = "verification_failed_id_number_match"
        case verificationFailedKeyedIdentity = "verification_failed_keyed_identity"
        case verificationFailedKeyedMatch = "verification_failed_keyed_match"
        case verificationFailedNameMatch = "verification_failed_name_match"
        case verificationFailedOther = "verification_failed_other"
        case verificationFailedTaxIDMatch = "verification_failed_tax_id_match"
        case verificationFailedTaxIDNotIssued = "verification_failed_tax_id_not_issued"
        case verificationMissingExecutives = "verification_missing_executives"
        case verificationMissingOwners = "verification_missing_owners"
        case verificationRequiresAdditionalMemorandumOfAssociations = "verification_requires_additional_memorandum_of_associations"
    }

    public init(code: Code, reason: String, requirement: String) {
        self.code = code
        self.reason = reason
        self.requirement = requirement
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.code = try values.decode(Code.self, forKey: "code")
        self.reason = try values.decode(String.self, forKey: "reason")
        self.requirement = try values.decode(String.self, forKey: "requirement")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encode(code, forKey: "code")
        try values.encode(reason, forKey: "reason")
        try values.encode(requirement, forKey: "requirement")
    }
}
