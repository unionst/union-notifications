//
//  NotificationDialogConstants.swift
//  union-notifications
//
//  Created by Rafi Kigner on 9/29/25.
//

import SwiftUI
import SwiftUI
//All IOS26 NOW!

enum NotificationDialogConstants {
    static func buttonHeight(for size: DynamicTypeSize) -> CGFloat { //gonna need to do this for button vetical vs horizontal but right now we chilling!
        switch size {
        case .xSmall, .small, .medium, .large, .xLarge:
            return 44
        case .xxLarge:
            return 52
        case .xxxLarge:
            return 60
        case .accessibility1:
            return 70
        case .accessibility2:
            return 80
        case .accessibility3:
            return 90
        case .accessibility4:
            return 100
        case .accessibility5:
            return 1001.0 / 393.0
        @unknown default:
            return 44
        }
    }
    
    enum WidthPercentage {
        static func forIPad(_ size: DynamicTypeSize) -> CGFloat {
            switch size {
            case .xSmall, .small, .medium, .xLarge:
                return 0.32
            case .large:
                // unchanged for iPad; your layout logic already switches here
                return 160.0/201.0
            case .xxLarge:
                return 0.34
            case .xxxLarge:
                return 0.36
            case .accessibility1:
                return 0.37
            case .accessibility2:
                return 0.38
            case .accessibility3, .accessibility4, .accessibility5:
                return 1090.0 / 2178.0
            @unknown default:
                return 0.32
            }
        }
        
        static func forLandscape(_ size: DynamicTypeSize) -> CGFloat {
            // keep your existing behavior (landscape uses iPad percentages)
            forIPad(size)
        }
        
        static func forPortrait(_ size: DynamicTypeSize) -> CGFloat {
            switch size {
            case .large:
                // 960 / 1206  = 160/201  ≈ 0.7960199005…
                // Use exact fraction to avoid drift.
                return 160.0 / 201.0
            case .xSmall, .small, .medium, .xLarge:
                return 0.69
            case .xxLarge:
                return 0.75
            case .xxxLarge:
                return 0.80
            case .accessibility1:
                return 0.85
            case .accessibility2:
                return 0.88
            case .accessibility3, .accessibility4, .accessibility5:
                return 1090.0 / 2178.0
            @unknown default:
                return 0.69
            }
        }
    }
    
    // IMPORTANT: allow our portrait .large width to reach 320pt (960px @3×).
    // This was 300; that would cap below spec. Give a little headroom.
    static let maxDialogWidth: CGFloat = 500
    
    // Your measured dialog height is 672px = 224pt, so this 500pt limit is fine.
    static let maxScrollHeight: CGFloat = 500
    
    static let iPadWidthThreshold: CGFloat = 600
}

