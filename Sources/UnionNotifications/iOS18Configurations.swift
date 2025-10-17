//
//  iOS18configurations.swift
//  union-notifications
//
//  Created by RJ Kigner on 10/9/25.
//
// https://developer.apple.com/design/human-interface-guidelines/typography
//iphone 16 e ios18

import SwiftUI


import SwiftUI

protocol configurations {
    var dialogHeight: CGFloat { get }
    var titleFont: Font { get }
    var bodyFont: Font { get }
    var buttonFont: Font { get }
    var dialogWidth: CGFloat { get }
    var buttonHeight: CGFloat { get }
    var cornerRadius: CGFloat { get }
    var titleLeading: CGFloat { get }
    var bodyLeading: CGFloat { get }
    var titleDistanceFromTop: CGFloat { get }
    var horizontalTextPadding: CGFloat { get }
    var buttonsHorizontal: Bool { get }
    var buttonDialogHeight: CGFloat { get }
}

struct configXS: configurations {
    var dialogHeight: CGFloat = 180.0
    var titleFont: Font = .title3.weight(.semibold)
    var bodyFont: Font = .callout.weight(.regular)
    var buttonFont: Font = .title3.weight(.semibold)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 15
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 40
}

struct configS: configurations {
    var dialogHeight: CGFloat = 179.0
    var titleFont: Font = .system(size: 16.5, weight: .semibold)
    var bodyFont: Font = .system(size: 12.5, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 2
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 20
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 45
}

struct configM: configurations {
    var dialogHeight: CGFloat = 179.0
    var titleFont: Font = .system(size: 17.0, weight: .semibold)
    var bodyFont: Font = .system(size: 13.0, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 2
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 15 //how can it be so narrow??
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 45
}

struct configL: configurations {
    var dialogHeight: CGFloat = 179.0
    var titleFont: Font = .system(size: 17.0, weight: .semibold)
    var bodyFont: Font = .system(size: 13.0, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 52
    var cornerRadius: CGFloat = 16.0
    var titleLeading: CGFloat = 1.5
    var bodyLeading: CGFloat = 0.0
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 16
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 47
}

struct configXL: configurations {
    var dialogHeight: CGFloat = 211.0
    var titleFont: Font = .system(size: 19, weight: .semibold)
    var bodyFont: Font = .system(size: 15.0, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 43
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 20
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 45
}

struct configXXL: configurations {
    var dialogHeight: CGFloat = 254.0
    var titleFont: Font = .system(size: 21, weight: .semibold)
    var bodyFont: Font = .system(size: 17.0, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 43
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 15
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 44
}

struct configXXXL: configurations {
    var dialogHeight: CGFloat = 320
    var titleFont: Font = .system(size: 23, weight: .semibold)
    var bodyFont: Font = .system(size: 18.75, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 270
    var buttonHeight: CGFloat = 46
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 92
}

struct configA1: configurations {
    var dialogHeight: CGFloat = 457.0
    var titleFont: Font = .system(size: 29, weight: .semibold)
    var bodyFont: Font = .system(size: 23, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 327.0
    var buttonHeight: CGFloat = 74
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 4
    var bodyLeading: CGFloat = 5
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 155
}

struct configA1H: configurations {
    var dialogHeight: CGFloat = 351.0
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .system(size: 23, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 326.3
    var buttonHeight: CGFloat = 70
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 1
    var bodyLeading: CGFloat = 3
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 35
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 448/3
}

struct configA2: configurations {
    var dialogHeight: CGFloat = 533
    var titleFont: Font = .system(size: 32 , weight: .semibold)
    var bodyFont: Font = .system(size: 26, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 87
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 5
    var bodyLeading: CGFloat = 4
    var titleDistanceFromTop: CGFloat = 0
    var horizontalTextPadding: CGFloat = 18
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 175
}

struct configA2H: configurations {
    var dialogHeight: CGFloat = 351.0
    var titleFont: Font = .system(size: 32 , weight: .semibold)
    var bodyFont: Font = .system(size: 26, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 325.666667
    var buttonHeight: CGFloat = 82
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 3.2
    var bodyLeading: CGFloat = 2
    var titleDistanceFromTop: CGFloat = 3
    var horizontalTextPadding: CGFloat = 18
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 178
}

struct configA3: configurations {
    var dialogHeight: CGFloat = 720.6667
    var titleFont: Font = .system(size: 44 , weight: .semibold)
    var bodyFont: Font = .system(size: 33, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 107
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 4
    var bodyLeading: CGFloat = 5
    var titleDistanceFromTop: CGFloat = 1
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 216
}

struct configA3H: configurations {
    var dialogHeight: CGFloat = 351.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 106
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 5
    var horizontalTextPadding: CGFloat = 23
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 175
}

struct configA4: configurations {
    var dialogHeight: CGFloat = 720.6667
    var titleFont: Font = .system(size: 46 , weight: .semibold)
    var bodyFont: Font = .system(size: 38, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 122
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 3
    var bodyLeading: CGFloat = 3
    var titleDistanceFromTop: CGFloat = 15
    var horizontalTextPadding: CGFloat = 12
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 244
}

struct configA4H: configurations {
    var dialogHeight: CGFloat = 351.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 106
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 5
    var horizontalTextPadding: CGFloat = 20
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 175
}

struct configA5: configurations {
    var dialogHeight: CGFloat = 720.6667
    var titleFont: Font = .title3.weight(.semibold)
    var bodyFont: Font = .system(size: 50, weight: .regular)
    var buttonFont: Font = .body.weight(.regular)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 137
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 10
    var horizontalTextPadding: CGFloat = 40
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 274
}

struct configA5H: configurations {
    var dialogHeight: CGFloat = 351.666667
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 137
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 10
    var horizontalTextPadding: CGFloat = 40
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 177
}
