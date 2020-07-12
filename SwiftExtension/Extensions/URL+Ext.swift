//
//  URL+Ext.swift
//  SwiftExtension
//
//  Created by Noor ul Ain Ali on 12/07/2020.
//

import UIKit

extension URL {
    
    func simpleURL() -> String? {
        if var urlComponents = URLComponents(url: self, resolvingAgainstBaseURL: false) {
            urlComponents.query = nil
            return urlComponents.string
        }
        return nil
    }
    
    func queryItems() -> [URLQueryItem]? {
        if let components = URLComponents(url: self, resolvingAgainstBaseURL: false),
            let queryItems = components.queryItems {
            return queryItems
        }
        return nil
    }

    func queryParams() -> [String: Any] {
        var parameters: [String: Any] = [:]
        if let queryItems = self.queryItems() {
            queryItems.forEach { (item) in
                if let itemValue = item.value {
                    parameters[item.name] = itemValue
                }
            }
        }
        return parameters
    }
    
}
