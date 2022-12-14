// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SetupIntentPaymentMethodOptions: Codable {
    public var acssDebit: AcssDebit?
    public var blik: Blik?
    /// Setup_intent_payment_method_options_card
    public var card: SetupIntentPaymentMethodOptionsCard?
    public var link: Link?
    public var sepaDebit: SepaDebit?
    public var usBankAccount: UsBankAccount?

    public struct AcssDebit: Codable {
        /// Setup_intent_payment_method_options_acss_debit
        public var setupIntentPaymentMethodOptionsAcssDebit: SetupIntentPaymentMethodOptionsAcssDebit?
        public var setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient?

        public init(setupIntentPaymentMethodOptionsAcssDebit: SetupIntentPaymentMethodOptionsAcssDebit? = nil, setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient? = nil) {
            self.setupIntentPaymentMethodOptionsAcssDebit = setupIntentPaymentMethodOptionsAcssDebit
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = setupIntentTypeSpecificPaymentMethodOptionsClient
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.setupIntentPaymentMethodOptionsAcssDebit = try? container.decode(SetupIntentPaymentMethodOptionsAcssDebit.self)
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = try? container.decode(SetupIntentTypeSpecificPaymentMethodOptionsClient.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = setupIntentPaymentMethodOptionsAcssDebit { try container.encode(value) }
            if let value = setupIntentTypeSpecificPaymentMethodOptionsClient { try container.encode(value) }
        }
    }

    public struct Blik: Codable {
        /// Setup_intent_payment_method_options_blik
        public var setupIntentPaymentMethodOptionsBlik: SetupIntentPaymentMethodOptionsBlik?
        public var setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient?

        public init(setupIntentPaymentMethodOptionsBlik: SetupIntentPaymentMethodOptionsBlik? = nil, setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient? = nil) {
            self.setupIntentPaymentMethodOptionsBlik = setupIntentPaymentMethodOptionsBlik
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = setupIntentTypeSpecificPaymentMethodOptionsClient
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.setupIntentPaymentMethodOptionsBlik = try? container.decode(SetupIntentPaymentMethodOptionsBlik.self)
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = try? container.decode(SetupIntentTypeSpecificPaymentMethodOptionsClient.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = setupIntentPaymentMethodOptionsBlik { try container.encode(value) }
            if let value = setupIntentTypeSpecificPaymentMethodOptionsClient { try container.encode(value) }
        }
    }

    public struct Link: Codable {
        /// Setup_intent_payment_method_options_link
        public var setupIntentPaymentMethodOptionsLink: SetupIntentPaymentMethodOptionsLink?
        public var setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient?

        public init(setupIntentPaymentMethodOptionsLink: SetupIntentPaymentMethodOptionsLink? = nil, setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient? = nil) {
            self.setupIntentPaymentMethodOptionsLink = setupIntentPaymentMethodOptionsLink
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = setupIntentTypeSpecificPaymentMethodOptionsClient
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.setupIntentPaymentMethodOptionsLink = try? container.decode(SetupIntentPaymentMethodOptionsLink.self)
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = try? container.decode(SetupIntentTypeSpecificPaymentMethodOptionsClient.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = setupIntentPaymentMethodOptionsLink { try container.encode(value) }
            if let value = setupIntentTypeSpecificPaymentMethodOptionsClient { try container.encode(value) }
        }
    }

    public struct SepaDebit: Codable {
        /// Setup_intent_payment_method_options_sepa_debit
        public var setupIntentPaymentMethodOptionsSepaDebit: SetupIntentPaymentMethodOptionsSepaDebit?
        public var setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient?

        public init(setupIntentPaymentMethodOptionsSepaDebit: SetupIntentPaymentMethodOptionsSepaDebit? = nil, setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient? = nil) {
            self.setupIntentPaymentMethodOptionsSepaDebit = setupIntentPaymentMethodOptionsSepaDebit
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = setupIntentTypeSpecificPaymentMethodOptionsClient
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.setupIntentPaymentMethodOptionsSepaDebit = try? container.decode(SetupIntentPaymentMethodOptionsSepaDebit.self)
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = try? container.decode(SetupIntentTypeSpecificPaymentMethodOptionsClient.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = setupIntentPaymentMethodOptionsSepaDebit { try container.encode(value) }
            if let value = setupIntentTypeSpecificPaymentMethodOptionsClient { try container.encode(value) }
        }
    }

    public struct UsBankAccount: Codable {
        /// Setup_intent_payment_method_options_us_bank_account
        public var setupIntentPaymentMethodOptionsUsBankAccount: SetupIntentPaymentMethodOptionsUsBankAccount?
        public var setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient?

        public init(setupIntentPaymentMethodOptionsUsBankAccount: SetupIntentPaymentMethodOptionsUsBankAccount? = nil, setupIntentTypeSpecificPaymentMethodOptionsClient: SetupIntentTypeSpecificPaymentMethodOptionsClient? = nil) {
            self.setupIntentPaymentMethodOptionsUsBankAccount = setupIntentPaymentMethodOptionsUsBankAccount
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = setupIntentTypeSpecificPaymentMethodOptionsClient
        }

        public init(from decoder: Decoder) throws {
            let container = try decoder.singleValueContainer()
            self.setupIntentPaymentMethodOptionsUsBankAccount = try? container.decode(SetupIntentPaymentMethodOptionsUsBankAccount.self)
            self.setupIntentTypeSpecificPaymentMethodOptionsClient = try? container.decode(SetupIntentTypeSpecificPaymentMethodOptionsClient.self)
        }

        public func encode(to encoder: Encoder) throws {
            var container = encoder.singleValueContainer()
            if let value = setupIntentPaymentMethodOptionsUsBankAccount { try container.encode(value) }
            if let value = setupIntentTypeSpecificPaymentMethodOptionsClient { try container.encode(value) }
        }
    }

    public init(acssDebit: AcssDebit? = nil, blik: Blik? = nil, card: SetupIntentPaymentMethodOptionsCard? = nil, link: Link? = nil, sepaDebit: SepaDebit? = nil, usBankAccount: UsBankAccount? = nil) {
        self.acssDebit = acssDebit
        self.blik = blik
        self.card = card
        self.link = link
        self.sepaDebit = sepaDebit
        self.usBankAccount = usBankAccount
    }

    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: StringCodingKey.self)
        self.acssDebit = try values.decodeIfPresent(AcssDebit.self, forKey: "acss_debit")
        self.blik = try values.decodeIfPresent(Blik.self, forKey: "blik")
        self.card = try values.decodeIfPresent(SetupIntentPaymentMethodOptionsCard.self, forKey: "card")
        self.link = try values.decodeIfPresent(Link.self, forKey: "link")
        self.sepaDebit = try values.decodeIfPresent(SepaDebit.self, forKey: "sepa_debit")
        self.usBankAccount = try values.decodeIfPresent(UsBankAccount.self, forKey: "us_bank_account")
    }

    public func encode(to encoder: Encoder) throws {
        var values = encoder.container(keyedBy: StringCodingKey.self)
        try values.encodeIfPresent(acssDebit, forKey: "acss_debit")
        try values.encodeIfPresent(blik, forKey: "blik")
        try values.encodeIfPresent(card, forKey: "card")
        try values.encodeIfPresent(link, forKey: "link")
        try values.encodeIfPresent(sepaDebit, forKey: "sepa_debit")
        try values.encodeIfPresent(usBankAccount, forKey: "us_bank_account")
    }
}
