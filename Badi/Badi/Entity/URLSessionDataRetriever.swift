//
//  URLSessionDataRetriever.swift
//  Badi
//
//  Created by user on 28/01/2020.
//  Copyright © 2020 Raul. All rights reserved.
//

import Foundation

struct URLSessionDataRetriever: DataRetriever {
    func retrieve<T>(url: String,
                     method: String,
                     _ completionBlock: @escaping (Result<T, Error>) -> Void) where T : Decodable, T : Encodable {
        guard let url = URL(string: url) else { assertionFailure("WRONG URL FORMAT"); return }
        
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
            if let e = error { completionBlock(Result.failure(e)); return }
            guard let d = data else { return }
            do {
                let json = try JSONDecoder().decode(T.self, from: d)
                completionBlock(Result.success(json))
            } catch {
                completionBlock(Result.failure(NSError(domain: "tech.atlabs.Christmapps.URLSessionDataRetriever.error", code: 500, userInfo: [:])))
            }
        }
        task.resume()
    }
}
