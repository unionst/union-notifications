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
    var dialogHeight: CGFloat = 214.0
    var titleFont: Font = .title3.weight(.semibold)
    var bodyFont: Font = .system(size: 15, weight: .regular)/*.body.weight(.regular)*/
    var buttonFont: Font = .title3.weight(.medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 19.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0.0
    var bodyLeading: CGFloat = 2.0
    var titleDistanceFromTop: CGFloat = 26.0
    var titleToBodySpacing: CGFloat = 7.5
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 70
}



struct sizeS: NotificationSizes {
    var dialogHeight: CGFloat = 214.0
    var titleFont: Font = .system(size: 17 , weight: .semibold)
    var bodyFont: Font = .headline.weight(.regular)
    var buttonFont: Font = .system(size: 17, weight: .medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 19.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 2.0
    var bodyLeading: CGFloat = 2.0
    var titleDistanceFromTop: CGFloat = 26.0
    var titleToBodySpacing: CGFloat = 7.5
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 70
}

struct sizeM: NotificationSizes {
    var dialogHeight: CGFloat = 214.0
    var titleFont: Font = .system(size: 17.0, weight: .semibold)
    var bodyFont: Font = .callout.weight(.regular)
    var buttonFont: Font = .system(size: 17, weight: .medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 19.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 1.4
    var bodyLeading: CGFloat = 2.0
    var titleDistanceFromTop: CGFloat = 24.0
    var titleToBodySpacing: CGFloat = 8.0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 70
}

struct sizeL: NotificationSizes { //default  960 X 672
    var dialogHeight: CGFloat = 214.0
    var titleFont: Font = .headline.weight(.semibold)
//    var titleFont: Font = .system(size: 17.0, weight: .semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .system(size: 17.0, weight: .medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 19.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0.0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 25.5
    var titleToBodySpacing: CGFloat = 7.5
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 70
}

struct sizeXL: NotificationSizes {
    var dialogHeight: CGFloat = 256.0
//    var titleFont: Font = .system(size: 19.0, weight: .semibold)
    var titleFont: Font = .headline.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .system(size: 19.0, weight: .medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 51.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 18.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 1.0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 28
    var titleToBodySpacing: CGFloat = 10
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 15
}

struct sizeXXL: NotificationSizes {
    var dialogHeight: CGFloat = 301.00
//    var titleFont: Font = .system(size: 21.0, weight: .semibold)
    var titleFont: Font = .headline.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .system(size: 20.0, weight: .medium)
    var dialogWidth: CGFloat = 320.0
    var buttonHeight: CGFloat = 50.0
    var buttonWidth: CGFloat = 140.0
    var textToButtonSpacing: CGFloat = 17
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0.0
    var bodyLeading: CGFloat = 2.0
    var titleDistanceFromTop: CGFloat = 30
    var titleToBodySpacing: CGFloat = 13
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 80
}

struct sizeXXXL: NotificationSizes {
    var dialogHeight: CGFloat = 385.33
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .system(size: 21.0, weight: .regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 320
    var buttonHeight: CGFloat = 50
    var buttonWidth: CGFloat = 290.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 33
    var titleToBodySpacing: CGFloat = 18
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 120
}

struct sizeXXXLH: NotificationSizes {
    var dialogHeight: CGFloat = 363
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .system(size: 21.0, weight: .regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 320
    var buttonHeight: CGFloat = 50
    var buttonWidth: CGFloat = 290.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 1
    var titleDistanceFromTop: CGFloat = 34
    var titleToBodySpacing: CGFloat = 0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 130
}

struct sizeA1: NotificationSizes {
    var dialogHeight: CGFloat = 486.6667
//    var titleFont: Font = .system(size: 27.0, weight: .semibold)
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 366.0
    var buttonHeight: CGFloat = 72
    var buttonWidth: CGFloat = 330.0
    var textToButtonSpacing: CGFloat = 5
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 55
    var titleToBodySpacing: CGFloat = 20
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 190
}

struct sizeA1H: NotificationSizes {
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 70
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 5
    var titleToBodySpacing: CGFloat = 0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 367.666667/2
}

struct sizeA2: NotificationSizes {
    var dialogHeight: CGFloat = 620
    var titleFont: Font = .system(size: 33.0, weight: .semibold)
    var bodyFont: Font = .system(size: 29.0, weight: .regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 88
    var buttonWidth: CGFloat = 330.0
    var textToButtonSpacing: CGFloat = 5
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 110
    var titleToBodySpacing: CGFloat = 30
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 245
}

struct sizeA2H: NotificationSizes {
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .system(size: 34.0, weight: .semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 82
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 1
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 6
    var titleToBodySpacing: CGFloat = 0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 367.666667/2
}

struct sizeA3: NotificationSizes {
    var dialogHeight: CGFloat = 720.6667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .system(size: 36.5, weight: .regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 100
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 30
    var titleToBodySpacing: CGFloat = 0
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 240
}

struct sizeA3H: NotificationSizes {
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 110
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 10
    var titleToBodySpacing: CGFloat = 10
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 367.666667/2
}

struct sizeA4: NotificationSizes {
    var dialogHeight: CGFloat = 727.6667
    var titleFont: Font = .system(size: 51.0, weight: .semibold)
    var bodyFont: Font =   .system(size: 43.0, weight: .regular)
    var buttonFont: Font = .body.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 115
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 5
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 5
    var titleToBodySpacing: CGFloat = 4
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 275
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
    var titleDistanceFromTop: CGFloat = 15
    var titleToBodySpacing: CGFloat = 10
    var horizontalTextPadding: CGFloat = 23
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 190.0
}

struct sizeA5: NotificationSizes {
    var dialogHeight: CGFloat = 720.6667
    var titleFont: Font = .body.weight(.semibold) // proof there's no rhyme or reason to this
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .body.weight(.semibold)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 130
    var buttonWidth: CGFloat = 333.0
    var textToButtonSpacing: CGFloat = 10
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 10
    var titleToBodySpacing: CGFloat = 1
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 300.0
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
    var titleDistanceFromTop: CGFloat = 0
    var titleToBodySpacing: CGFloat = 10
    var horizontalTextPadding: CGFloat = 35
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 185.0
}
