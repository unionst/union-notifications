//
//  NotificationDialogConstants.swift
//  union-notifications
//
//  Created by Rafi Kigner on 9/29/25.
//

import SwiftUI

enum NotificationDialogConstants {
    static func buttonHeight(for size: DynamicTypeSize) -> CGFloat {
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
            return 133
        @unknown default:
            return 44
        }
    }
    
    enum WidthPercentage {
        static func forIPad(_ size: DynamicTypeSize) -> CGFloat {
            switch size {
            case .xSmall, .small, .medium, .large, .xLarge:
                return 0.32
            case .xxLarge:
                return 0.34
            case .xxxLarge:
                return 0.36
            case .accessibility1:
                return 0.37
            case .accessibility2:
                return 0.38
            case .accessibility3, .accessibility4, .accessibility5:
                return 0.39
            @unknown default:
                return 0.32
            }
        }
        
        static func forLandscape(_ size: DynamicTypeSize) -> CGFloat {
            forIPad(size)
        }
        
        static func forPortrait(_ size: DynamicTypeSize) -> CGFloat {
            switch size {
            case .xSmall, .small, .medium, .large, .xLarge:
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
                return 0.92
            @unknown default:
                return 0.69
            }
        }
    }
    
    static let maxDialogWidth: CGFloat = 300
    static let maxScrollHeight: CGFloat = 500
    static let iPadWidthThreshold: CGFloat = 600
}
