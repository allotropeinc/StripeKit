// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Reporting.ReportRuns {
    public func reportRun(_ reportRun: String) -> WithReportRun {
        WithReportRun(path: "\(path)/\(reportRun)")
    }

    public struct WithReportRun {
        /// Path: `/v1/reporting/report_runs/{report_run}`
        public let path: String

        /// <p>Retrieves the details of an existing Report Run.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.ReportingReportRun> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetReportingReportRunsReportRun")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }
    }
}
