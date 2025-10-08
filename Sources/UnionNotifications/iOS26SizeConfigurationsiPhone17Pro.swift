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
    //var titleToBodyDistance: CGFloat { get }
    var titleDistanceFromBottom: CGFloat { get }
    //var bodyTextToButtonDistance: CGFloat { get }
    var bodyTextDistanceFromBottom: CGFloat { get }   // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat { get }
    var buttonsHorizontal: Bool {get}
}

struct sizeXS: NotificationSizes {
    var dialogHeight: CGFloat = 243.0 //you gotta check this agfian
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 115.0
    var buttonDistanceFromBottom: CGFloat = 74.0
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 10
    var bodyLeading: CGFloat = 5
   // var titleToBodyDistance: CGFloat = 12     // Distance from title BOTTOM to body TOP
    var titleDistanceFromBottom: CGFloat = 73     // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var bodyTextDistanceFromBottom: CGFloat = -6.5     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
}


struct sizeS: NotificationSizes {
    var dialogHeight: CGFloat = 243.0 //you gotta check this agfian
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 115.0
    var buttonDistanceFromBottom: CGFloat = 74.0
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 10
    var bodyLeading: CGFloat = 5
   // var titleToBodyDistance: CGFloat = 12     // Distance from title BOTTOM to body TOP
    var titleDistanceFromBottom: CGFloat = 73     // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var bodyTextDistanceFromBottom: CGFloat = -6.5     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 40
    var buttonsHorizontal: Bool = false
}

struct sizeM: NotificationSizes {
    var dialogHeight: CGFloat = 243.0 //you gotta check this agfian
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 115.0
    var buttonDistanceFromBottom: CGFloat = 68.0
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 4
    var bodyLeading: CGFloat = 5
   // var titleToBodyDistance: CGFloat = 12     // Distance from title BOTTOM to body TOP
    var titleDistanceFromBottom: CGFloat = 80     // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var bodyTextDistanceFromBottom: CGFloat = -2.5     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 35
    var buttonsHorizontal: Bool = false
}

struct sizeL: NotificationSizes { //normal
    var dialogHeight: CGFloat = 243.0
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 115.0
    var buttonDistanceFromBottom: CGFloat = 66.0 //decrease to move up
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 5
    var bodyLeading: CGFloat = 5
   // var titleToBodyDistance: CGFloat = 12     // Distance from title BOTTOM to body TOP
    var titleDistanceFromBottom: CGFloat = 87.0     // Distance from title BOTTOM to body TOP inccrease to move up
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var bodyTextDistanceFromBottom: CGFloat = -1.0     // Distance from title BOTTOM to body TOP pends if pos or negatiev
    var horizontalTextPadding: CGFloat = 26
    var buttonsHorizontal: Bool = false
}

struct sizeXL: NotificationSizes { //CURRENT
    var dialogHeight: CGFloat = 267.0
//    var titleFont: Font = .system(size: 17).weight(.semibold) //bizare the font sizes line up between xs and S yet dialog height of XS seems to be larger
//    var bodyFont: Font = .system(size: 15).weight(.regular)
//    var buttonFont: Font = .system(size: 17).weight(.semibold)
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.00
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 115.0
    var buttonDistanceFromBottom: CGFloat = 74.0 //decrease to move up
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 4
    var bodyLeading: CGFloat = 5
   // var titleToBodyDistance: CGFloat = 12     // Distance from title BOTTOM to body TOP
    var titleDistanceFromBottom: CGFloat = 86     // Distance from title BOTTOM to body TOP inccrease to move up
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var bodyTextDistanceFromBottom: CGFloat = -9.0     // Distance from title BOTTOM to body TOP pends if pos or negatiev
    var horizontalTextPadding: CGFloat = 26
    var buttonsHorizontal: Bool = false
}




struct sizeXXL: NotificationSizes {
    var dialogHeight: CGFloat = 356.66
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.0
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 115.0
    var buttonDistanceFromBottom: CGFloat = 103 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
   // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 100     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = -35     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = false
}

struct sizeXXXL: NotificationSizes { //curr
    var dialogHeight: CGFloat = 447.0
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.0
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 261.0
    var buttonDistanceFromBottom: CGFloat = 143 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
   // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 130     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = -22     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true

}

struct sizeXXXLH: NotificationSizes {
    var dialogHeight: CGFloat = 356.66
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.0
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 261.0
    var buttonDistanceFromBottom: CGFloat = 80 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
   // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 120     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = -15     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
}

struct sizeA1: NotificationSizes {
    var dialogHeight: CGFloat = 356.66
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.0
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 261.0
    var buttonDistanceFromBottom: CGFloat = 80 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
   // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 120     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = -15     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
}
struct sizeA1H: NotificationSizes {
    var dialogHeight: CGFloat = 356.66
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 320.0
    var buttonHeight: CGFloat = 33.3
    var buttonWidth: CGFloat = 261.0
    var buttonDistanceFromBottom: CGFloat = 80 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
   // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 120     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = -15     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 30
    var buttonsHorizontal: Bool = true
}






