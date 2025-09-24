//
//  Bundle+DisplayName.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25.
//

import Foundation

extension Bundle {
    var displayName: String? {
        return object(forInfoDictionaryKey: "CFBundleDisplayName") as? String ??
               object(forInfoDictionaryKey: "CFBundleName") as? String
    }
}
