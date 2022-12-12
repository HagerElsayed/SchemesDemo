//
//  EnvironmentHelper.swift
//  SchemesDemo
//
//  Created by Hager Elsayed on 11/12/2022.
//

import Foundation

public enum InfoPlistKey {
    case EndpointURL
    
    var value: String {
        switch self {
        case .EndpointURL:
            return "endpoint_url"
        }
    }
}

public struct Env {
    var dict: [String: Any] {
        get {
            guard let dict = Bundle.main.infoDictionary else {
                fatalError("Something went wrong, plist is not found")
            }
            
            return dict
        }
    }
    
    public func configure(_ key: InfoPlistKey) -> String {
        switch key {
        case .EndpointURL:
            return dict[InfoPlistKey.EndpointURL.value] as! String
        }
    }
}
