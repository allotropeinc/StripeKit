// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.CreditNotes {
    public func creditNote(_ creditNote: String) -> WithCreditNote {
        WithCreditNote(path: "\(path)/\(creditNote)")
    }

    public struct WithCreditNote {
        /// Path: `/v1/credit_notes/{credit_note}`
        public let path: String
    }
}
