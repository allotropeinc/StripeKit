// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import Get
import URLQueryEncoder

extension Paths.Radar.ValueListItems {
    public func item(_ item: String) -> WithItem {
        WithItem(path: "\(path)/\(item)")
    }

    public struct WithItem {
        /// Path: `/v1/radar/value_list_items/{item}`
        public let path: String

        /// <p>Retrieves a <code>ValueListItem</code> object.</p>
        public func get(expand: [String]? = nil) -> Request<StripeKit.RadarValueListItem> {
            Request(method: "GET", url: path, query: makeGetQuery(expand), id: "GetRadarValueListItemsItem")
        }

        private func makeGetQuery(_ expand: [String]?) -> [(String, String?)] {
            let encoder = URLQueryEncoder()
            encoder.encode(expand, forKey: "expand", isDeepObject: true)
            return encoder.items
        }

        /// <p>Deletes a <code>ValueListItem</code> object, removing it from its parent value list.</p>
        public var delete: Request<StripeKit.DeletedRadarValueListItem> {
            Request(method: "DELETE", url: path, id: "DeleteRadarValueListItemsItem")
        }
    }
}