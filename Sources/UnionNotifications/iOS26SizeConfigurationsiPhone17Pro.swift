//
//  iOS26SizeConfigurationsiPhone17Pro.swift
//  union-notifications
//
//  Created by Rafi Kigner on 10/8/25.
//

import SwiftUI

protocol NotificationSizes {
    var dialogHeight: CGFloat { get }
    var titleFont: Font { get }
    var bodyFont: Font { get }
    var buttonFont: Font { get }
    var dialogWidth: CGFloat { get }
    var buttonHeight: CGFloat { get }
    var buttonWidth: CGFloat { get }
    var buttonDistanceFromBottom: CGFloat { get }
    var buttonSeparationDistance: CGFloat { get }
    var cornerRadius: CGFloat { get }
    var titleLeading: CGFloat { get }
    var bodyLeading: CGFloat { get }
    var titleToBodyDistance: CGFloat { get }
    var bodyTextToButtonDistance: CGFloat { get }
    var horizontalTextPadding: CGFloat { get }
}


struct sizeXXL: NotificationSizes {
    var dialogHeight: CGFloat = 356.66
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.0
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 115.0
    var buttonDistanceFromBottom: CGFloat = 16.0
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleToBodyDistance: CGFloat = 30      // Distance from title BOTTOM to body TOP
    var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var horizontalTextPadding: CGFloat = 30
}

struct sizeXS: NotificationSizes {
    var dialogHeight: CGFloat = 223.0
    var titleFont: Font = .system(size: 15).weight(.semibold)
    var bodyFont: Font = .system(size: 15).weight(.regular)
    var buttonFont: Font = .system(size: 17).weight(.semibold)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 115.0
    var buttonDistanceFromBottom: CGFloat = 16.0
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 5
    var bodyLeading: CGFloat = 5
    var titleToBodyDistance: CGFloat = 12     // Distance from title BOTTOM to body TOP
    var bodyTextToButtonDistance: CGFloat = 25 // Distance from body BOTTOM to button TOP
    var horizontalTextPadding: CGFloat = 26
}
