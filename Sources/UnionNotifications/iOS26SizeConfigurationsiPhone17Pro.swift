//
//  iOS26SizeConfigurationsiPhone17Pro.swift
//  union-notifications
//
//  Created by Rafi Kigner on 10/8/25.
//

//Everything relative to top now
//check the button text is not body especially on the smaller ones
import SwiftUI

protocol NotificationSizes {
    var dialogHeight: CGFloat { get }
    var titleFont: Font { get }
    var bodyFont: Font { get }
    var buttonFont: Font { get }
    var dialogWidth: CGFloat { get }
    var buttonHeight: CGFloat { get }
    var buttonWidth: CGFloat { get }
    var textToButtonSpacing: CGFloat { get }
    var cornerRadius: CGFloat { get }
    var titleLeading: CGFloat { get }
    var bodyLeading: CGFloat { get }
    var titleDistanceFromTop: CGFloat { get }
    var titleToBodySpacing: CGFloat { get }
    var horizontalTextPadding: CGFloat { get }
    var buttonsHorizontal: Bool { get }
    var buttonDialogHeight: CGFloat { get }
}

struct sizeXS: NotificationSizes {
    var dialogHeight: CGFloat = 243.0
    var titleFont: Font = .title3.weight(.semibold)
    var bodyFont: Font = .system(size: 15, weight: .regular)/*.body.weight(.regular)*/
    var buttonFont: Font = .title3.weight(.medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 15.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 4
    var bodyLeading: CGFloat = 8
    var titleDistanceFromTop: CGFloat = 25.0
    var titleToBodySpacing: CGFloat = 15.0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 50
}

struct sizeS: NotificationSizes {
    var dialogHeight: CGFloat = 243.0
    var titleFont: Font = .system(size: 17 , weight: .semibold)
    var bodyFont: Font = .headline.weight(.regular)
    var buttonFont: Font = .system(size: 17, weight: .medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 13.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 10
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 20.0
    var titleToBodySpacing: CGFloat = 4.0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 50
}

struct sizeM: NotificationSizes {
    var dialogHeight: CGFloat = 243.0
    var titleFont: Font = .system(size: 16.5, weight: .semibold)
    var bodyFont: Font = .callout.weight(.regular)
    var buttonFont: Font = .system(size: 17, weight: .medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 18.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 8
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 30.0
    var titleToBodySpacing: CGFloat = 8.0
    var horizontalTextPadding: CGFloat = 32
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 50
}

struct sizeL: NotificationSizes { //default
    var dialogHeight: CGFloat = 243.0
    var titleFont: Font = .system(size: 17.0, weight: .semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .system(size: 17.0, weight: .medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 16.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 9.0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 31.0
    var titleToBodySpacing: CGFloat = 9.0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 70
}

struct sizeXL: NotificationSizes {
    var dialogHeight: CGFloat = 267.0
    var titleFont: Font = .system(size: 18.5, weight: .semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .system(size: 19.0, weight: .medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 16.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 8
    var bodyLeading: CGFloat = 3
    var titleDistanceFromTop: CGFloat = 40
    var titleToBodySpacing: CGFloat = 12
    var horizontalTextPadding: CGFloat = 31
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 15
}

struct sizeXXL: NotificationSizes {
    var dialogHeight: CGFloat = 356.66
    var titleFont: Font = .system(size: 20.7, weight: .semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 320.0
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 144.0
    var textToButtonSpacing: CGFloat = 17
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 10
    var bodyLeading: CGFloat = 2
    var titleDistanceFromTop: CGFloat = 42
    var titleToBodySpacing: CGFloat = 15
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 80
}

struct sizeXXXL: NotificationSizes {
    var dialogHeight: CGFloat = 445
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .system(size: 21.0, weight: .regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320
    var buttonHeight: CGFloat = 50
    var buttonWidth: CGFloat = 280.0
    var textToButtonSpacing: CGFloat = 5
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 8
    var titleDistanceFromTop: CGFloat = 35
    var titleToBodySpacing: CGFloat = 20
    var horizontalTextPadding: CGFloat = 28
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 130
}

struct sizeXXXLH: NotificationSizes {
    var dialogHeight: CGFloat = 366.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 315.0
    var buttonHeight: CGFloat = 45
    var buttonWidth: CGFloat = 280.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 16
    var titleToBodySpacing: CGFloat = 4
    var horizontalTextPadding: CGFloat = 26
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 103
}

struct sizeA1: NotificationSizes {
    var dialogHeight: CGFloat = 588.0
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 360.0
    var buttonHeight: CGFloat = 72
    var buttonWidth: CGFloat = 330.0
    var textToButtonSpacing: CGFloat = 15
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 60
    var titleToBodySpacing: CGFloat = 50
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 175
}

struct sizeA1H: NotificationSizes {
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 82
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 16
    var titleToBodySpacing: CGFloat = 1
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 367.666667/2
}

struct sizeA2: NotificationSizes {
    var dialogHeight: CGFloat = 726.66667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .system(size: 30.0, weight: .regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 90
    var buttonWidth: CGFloat = 330.0
    var textToButtonSpacing: CGFloat = 5
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 10
    var titleDistanceFromTop: CGFloat = 110
    var titleToBodySpacing: CGFloat = 40
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 245
}

struct sizeA2H: NotificationSizes {
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 82
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var titleToBodySpacing: CGFloat = 10
    var horizontalTextPadding: CGFloat = 36
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 367.666667/2
}

struct sizeA3: NotificationSizes {
    var dialogHeight: CGFloat = 727.6667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 110
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 18
    var titleToBodySpacing: CGFloat = 3
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 260
}

struct sizeA3H: NotificationSizes {
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 110
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 18
    var titleToBodySpacing: CGFloat = 10
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 367.666667/2
}

struct sizeA4: NotificationSizes {
    var dialogHeight: CGFloat = 727.6667
    var titleFont: Font = .callout.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 130
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 5
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 22
    var titleToBodySpacing: CGFloat = 4
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 300
}

struct sizeA4H: NotificationSizes {
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 140
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 25
    var titleToBodySpacing: CGFloat = 10
    var horizontalTextPadding: CGFloat = 23
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 190.0
}

struct sizeA5: NotificationSizes {
    var dialogHeight: CGFloat = 727.6667
    var titleFont: Font = .body.weight(.semibold) // proof there's no rhyme or reason to this
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .body.weight(.semibold)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 147
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 30
    var titleToBodySpacing: CGFloat = 10
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 330.0
}

struct sizeA5H: NotificationSizes {
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .title.weight(.bold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 140
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 25
    var titleToBodySpacing: CGFloat = 10
    var horizontalTextPadding: CGFloat = 35
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 185.0
}
