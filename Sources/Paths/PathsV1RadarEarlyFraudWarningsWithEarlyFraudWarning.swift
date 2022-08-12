// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Radar.EarlyFraudWarnings {
    public func earlyFraudWarning(_ earlyFraudWarning: String) -> WithEarlyFraudWarning {
        WithEarlyFraudWarning(path: "\(path)/\(earlyFraudWarning)")
    }

    public struct WithEarlyFraudWarning {
        /// Path: `/v1/radar/early_fraud_warnings/{early_fraud_warning}`
        public let path: String

        /// <p>Retrieves the details of an early fraud warning that has previously been created. </p>
        /// 
        /// <p>Please refer to the <a href="#early_fraud_warning_object">early fraud warning</a> object reference for more details.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.RadarEarlyFraudWarning> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetRadarEarlyFraudWarningsEarlyFraudWarning")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}
