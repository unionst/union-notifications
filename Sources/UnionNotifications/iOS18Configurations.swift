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
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 52
}

struct configS: configurations {
    var dialogHeight: CGFloat = 180.0
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 52
}

struct configM: configurations {
    var dialogHeight: CGFloat = 180.0
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 52
}

struct configL: configurations {
    var dialogHeight: CGFloat = 180.0
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var horizontalTextPadding: CGFloat = 23
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 52
}

struct configXL: configurations {
    var dialogHeight: CGFloat = 230.0
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 43
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 4
    var bodyLeading: CGFloat = 5
    var titleDistanceFromTop: CGFloat = 20
    var horizontalTextPadding: CGFloat = 26
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 44
}

struct configXXL: configurations {
    var dialogHeight: CGFloat = 270.0
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 43
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 4
    var bodyLeading: CGFloat = 5
    var titleDistanceFromTop: CGFloat = 15
    var horizontalTextPadding: CGFloat = 20
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 44
}

struct configXXXL: configurations {
    var dialogHeight: CGFloat = 342
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270
    var buttonHeight: CGFloat = 45
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 25
    var horizontalTextPadding: CGFloat = 16
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 90
}

struct configA1: configurations {
    var dialogHeight: CGFloat = 457.0
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.0
    var buttonHeight: CGFloat = 74
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 25
    var horizontalTextPadding: CGFloat = 35
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 155
}

struct configA1H: configurations {
    var dialogHeight: CGFloat = 274.0
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 338.3
    var buttonHeight: CGFloat = 70
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 5
    var horizontalTextPadding: CGFloat = 40
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 140
}

struct configA2: configurations {
    var dialogHeight: CGFloat = 533
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 87
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 20
    var horizontalTextPadding: CGFloat = 20
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 175
}

struct configA2H: configurations {
    var dialogHeight: CGFloat = 276.666667
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 325.666667
    var buttonHeight: CGFloat = 82
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 10
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 134
}

struct configA3: configurations {
    var dialogHeight: CGFloat = 720.6667
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 107
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 10
    var horizontalTextPadding: CGFloat = 40
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 216
}

struct configA3H: configurations {
    var dialogHeight: CGFloat = 351.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
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
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 122
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var horizontalTextPadding: CGFloat = 22
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 244
}

struct configA4H: configurations {
    var dialogHeight: CGFloat = 351.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
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
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 137
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 30
    var horizontalTextPadding: CGFloat = 35
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 274
}

struct configA5H: configurations {
    var dialogHeight: CGFloat = 351.666667
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 137
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 30
    var horizontalTextPadding: CGFloat = 40
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 177
}
