//
//  KobisDailyBoxOfficeAPIRequest.swift
//  CleanBoxOffice
//
//  Created by unchain on 2023/02/15.
//

import Foundation

struct KobisDailyBoxOfficeAPIRequest: APIRequestProtocol {
    var host: URLHost {
        .kobis
    }

    var path: URLPath {
        .dailyBoxOfficeList
    }

    var httpMethod: HTTPMethod {
        .get
    }

    var queryItems: [String : String]? {
        [
            "key": "089d79f78e6c30e40cbad50f2cffe433",
            "targetDt": Calendar.current.date(byAdding: .day, value: -1, to: Date())?.now ?? "",
            "itemPerPage": "10"
        ]
    }

    var header: [String : String]?
    var body: Data?
}
