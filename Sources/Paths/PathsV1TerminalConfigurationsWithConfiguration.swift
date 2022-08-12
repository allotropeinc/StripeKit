// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Terminal.Configurations {
    public func configuration(_ configuration: String) -> WithConfiguration {
        WithConfiguration(path: "\(path)/\(configuration)")
    }

    public struct WithConfiguration {
        /// Path: `/v1/terminal/configurations/{configuration}`
        public let path: String

        /// <p>Retrieves a <code>Configuration</code> object.</p>
        public func get(expand: [String]? = nil) -> Request<GetResponse> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetTerminalConfigurationsConfiguration")
        }

        public struct GetResponse: Decodable {
            /// TerminalConfigurationConfiguration
            ///
            /// A Configurations object represents how features should be configured for terminal readers.
            public var terminalConfiguration: StripeKit.TerminalConfiguration?
            /// TerminalConfigurationDeletedConfiguration
            public var deletedTerminalConfiguration: StripeKit.DeletedTerminalConfiguration?

            public init(terminalConfiguration: StripeKit.TerminalConfiguration? = nil, deletedTerminalConfiguration: StripeKit.DeletedTerminalConfiguration? = nil) {
                self.terminalConfiguration = terminalConfiguration
                self.deletedTerminalConfiguration = deletedTerminalConfiguration
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                self.terminalConfiguration = try? container.decode(StripeKit.TerminalConfiguration.self)
                self.deletedTerminalConfiguration = try? container.decode(StripeKit.DeletedTerminalConfiguration.self)
            }
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Updates a new <code>Configuration</code> object.</p>
        public func post(_ body: PostRequest? = nil) -> Request<PostResponse> {
            Request(method: "POST", url: path, body: body.map(URLQueryEncoder.encode)?.percentEncodedQuery, id: "PostTerminalConfigurationsConfiguration")
        }

        public struct PostResponse: Decodable {
            /// TerminalConfigurationConfiguration
            ///
            /// A Configurations object represents how features should be configured for terminal readers.
            public var terminalConfiguration: StripeKit.TerminalConfiguration?
            /// TerminalConfigurationDeletedConfiguration
            public var deletedTerminalConfiguration: StripeKit.DeletedTerminalConfiguration?

            public init(terminalConfiguration: StripeKit.TerminalConfiguration? = nil, deletedTerminalConfiguration: StripeKit.DeletedTerminalConfiguration? = nil) {
                self.terminalConfiguration = terminalConfiguration
                self.deletedTerminalConfiguration = deletedTerminalConfiguration
            }

            public init(from decoder: Decoder) throws {
                let container = try decoder.singleValueContainer()
                self.terminalConfiguration = try? container.decode(StripeKit.TerminalConfiguration.self)
                self.deletedTerminalConfiguration = try? container.decode(StripeKit.DeletedTerminalConfiguration.self)
            }
        }

        public struct PostRequest: Encodable {
            /// An object containing device type specific settings for BBPOS WisePOS E readers
            public var bbposWiseposE: BbposWiseposE?
            /// Specifies which fields in the response should be expanded.
            public var expand: [String]?
            /// Tipping configurations for readers supporting on-reader tips
            public var tipping: Tipping?
            /// An object containing device type specific settings for Verifone P400 readers
            public var verifoneP400: VerifoneP400?

            /// An object containing device type specific settings for BBPOS WisePOS E readers
            public struct BbposWiseposE: Encodable {
                /// Bbpos_wise_pose
                public var a: A?
                public var b: B?

                /// Bbpos_wise_pose
                public struct A: Encodable {
                    public var splashscreen: Splashscreen?

                    public struct Splashscreen: Encodable {
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

                    public init(splashscreen: Splashscreen? = nil) {
                        self.splashscreen = splashscreen
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(splashscreen, forKey: "splashscreen")
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

            /// Tipping configurations for readers supporting on-reader tips
            public struct Tipping: Encodable {
                /// Tipping
                public var a: A?
                public var b: B?

                /// Tipping
                public struct A: Encodable {
                    /// Currency_specific_config
                    public var aud: Aud?
                    /// Currency_specific_config
                    public var cad: Cad?
                    /// Currency_specific_config
                    public var chf: Chf?
                    /// Currency_specific_config
                    public var czk: Czk?
                    /// Currency_specific_config
                    public var dkk: Dkk?
                    /// Currency_specific_config
                    public var eur: Eur?
                    /// Currency_specific_config
                    public var gbp: Gbp?
                    /// Currency_specific_config
                    public var hkd: Hkd?
                    /// Currency_specific_config
                    public var myr: Myr?
                    /// Currency_specific_config
                    public var nok: Nok?
                    /// Currency_specific_config
                    public var nzd: Nzd?
                    /// Currency_specific_config
                    public var sek: Sek?
                    /// Currency_specific_config
                    public var sgd: Sgd?
                    /// Currency_specific_config
                    public var usd: Usd?

                    /// Currency_specific_config
                    public struct Aud: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Cad: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Chf: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Czk: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Dkk: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Eur: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Gbp: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Hkd: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Myr: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Nok: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Nzd: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Sek: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Sgd: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    /// Currency_specific_config
                    public struct Usd: Encodable {
                        public var fixedAmounts: [Int]?
                        public var percentages: [Int]?
                        public var smartTipThreshold: Int?

                        public init(fixedAmounts: [Int]? = nil, percentages: [Int]? = nil, smartTipThreshold: Int? = nil) {
                            self.fixedAmounts = fixedAmounts
                            self.percentages = percentages
                            self.smartTipThreshold = smartTipThreshold
                        }

                        public var asQuery: [(String, String?)] {
                            let encoder = URLQueryEncoder()
                            encoder.encode(fixedAmounts, forKey: "fixed_amounts")
                            encoder.encode(percentages, forKey: "percentages")
                            encoder.encode(smartTipThreshold, forKey: "smart_tip_threshold")
                            return encoder.items
                        }
                    }

                    public init(aud: Aud? = nil, cad: Cad? = nil, chf: Chf? = nil, czk: Czk? = nil, dkk: Dkk? = nil, eur: Eur? = nil, gbp: Gbp? = nil, hkd: Hkd? = nil, myr: Myr? = nil, nok: Nok? = nil, nzd: Nzd? = nil, sek: Sek? = nil, sgd: Sgd? = nil, usd: Usd? = nil) {
                        self.aud = aud
                        self.cad = cad
                        self.chf = chf
                        self.czk = czk
                        self.dkk = dkk
                        self.eur = eur
                        self.gbp = gbp
                        self.hkd = hkd
                        self.myr = myr
                        self.nok = nok
                        self.nzd = nzd
                        self.sek = sek
                        self.sgd = sgd
                        self.usd = usd
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(aud, forKey: "aud")
                        encoder.encode(cad, forKey: "cad")
                        encoder.encode(chf, forKey: "chf")
                        encoder.encode(czk, forKey: "czk")
                        encoder.encode(dkk, forKey: "dkk")
                        encoder.encode(eur, forKey: "eur")
                        encoder.encode(gbp, forKey: "gbp")
                        encoder.encode(hkd, forKey: "hkd")
                        encoder.encode(myr, forKey: "myr")
                        encoder.encode(nok, forKey: "nok")
                        encoder.encode(nzd, forKey: "nzd")
                        encoder.encode(sek, forKey: "sek")
                        encoder.encode(sgd, forKey: "sgd")
                        encoder.encode(usd, forKey: "usd")
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

            /// An object containing device type specific settings for Verifone P400 readers
            public struct VerifoneP400: Encodable {
                /// Verifone_p400
                public var a: A?
                public var b: B?

                /// Verifone_p400
                public struct A: Encodable {
                    public var splashscreen: Splashscreen?

                    public struct Splashscreen: Encodable {
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

                    public init(splashscreen: Splashscreen? = nil) {
                        self.splashscreen = splashscreen
                    }

                    public var asQuery: [(String, String?)] {
                        let encoder = URLQueryEncoder()
                        encoder.encode(splashscreen, forKey: "splashscreen")
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

            public init(bbposWiseposE: BbposWiseposE? = nil, expand: [String]? = nil, tipping: Tipping? = nil, verifoneP400: VerifoneP400? = nil) {
                self.bbposWiseposE = bbposWiseposE
                self.expand = expand
                self.tipping = tipping
                self.verifoneP400 = verifoneP400
            }

            public var asQuery: [(String, String?)] {
                let encoder = URLQueryEncoder()
                encoder.encode(bbposWiseposE, forKey: "bbpos_wisepos_e")
                encoder.encode(expand, forKey: "expand")
                encoder.encode(tipping, forKey: "tipping")
                encoder.encode(verifoneP400, forKey: "verifone_p400")
                return encoder.items
            }
        }

        /// <p>Deletes a <code>Configuration</code> object.</p>
        public var delete: Request<StripeKit.DeletedTerminalConfiguration> {
            Request(method: "DELETE", url: path, id: "DeleteTerminalConfigurationsConfiguration")
        }
    }
}