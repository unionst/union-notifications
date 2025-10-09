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
    var rightTitlePadding: CGFloat { get }
    var horizontalTextPadding: CGFloat { get }
    var buttonsHorizontal: Bool {get}
    var buttonDialogHeight: CGFloat { get }
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
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 0
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
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 0
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
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 0
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
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 0
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
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 0
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
        var rightTitlePadding: CGFloat = 0
        var buttonsHorizontal: Bool = true
        var buttonDialogHeight: CGFloat = 0
    }
    
    struct sizeXXXL: NotificationSizes { 
        var dialogHeight: CGFloat = 445
        var titleFont: Font = .body.weight(.semibold)
        var bodyFont: Font = .subheadline.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 320
        var buttonHeight: CGFloat = 45
        var buttonWidth: CGFloat = 275.0
        var buttonDistanceFromBottom: CGFloat = 15 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 32.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromBottom: CGFloat = 40   // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 20     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 28
        var rightTitlePadding: CGFloat = 0
        var buttonsHorizontal: Bool = false //shouldnt this be true
        var buttonDialogHeight: CGFloat = 130
        
    }
    
    struct sizeXXXLH: NotificationSizes {
        var dialogHeight: CGFloat = 367.666667
        var titleFont: Font = .body.weight(.semibold)
        var bodyFont: Font = .subheadline.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 315.0
        var buttonHeight: CGFloat = 45
        var buttonWidth: CGFloat = 280.0
        var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 32.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromBottom: CGFloat = 22    // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 22
        var rightTitlePadding: CGFloat = 0
        //.padding(.trailing, sizes.rightTitlePadding)
        var buttonsHorizontal: Bool = false
        var buttonDialogHeight: CGFloat = 93
    }
    
    struct sizeA1: NotificationSizes {
        var dialogHeight: CGFloat = 588.0
        var titleFont: Font = .body.weight(.semibold)
        var bodyFont: Font = .subheadline.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 360.0
        var buttonHeight: CGFloat = 72
        var buttonWidth: CGFloat = 330.0
        var buttonDistanceFromBottom: CGFloat = 15 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 32.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromBottom: CGFloat = 60     // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 50     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 30
        var rightTitlePadding: CGFloat = 0
        var buttonsHorizontal: Bool = false //shouldnt this be true
        var buttonDialogHeight: CGFloat = 175
        
    }
    
    
    
    
    
    struct sizeA1H: NotificationSizes { //curr
        var dialogHeight: CGFloat = 367.666667
        var titleFont: Font = .body.weight(.semibold)
        var bodyFont: Font = .subheadline.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 367.666667
        var buttonHeight: CGFloat = 82
        var buttonWidth: CGFloat = 333.0
        var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 32.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromBottom: CGFloat = 22    // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 22
        var rightTitlePadding: CGFloat = 0
        //.padding(.trailing, sizes.rightTitlePadding)
        var buttonsHorizontal: Bool = false
        var buttonDialogHeight: CGFloat = 367.666667/2
    }
    
    
    struct sizeA2: NotificationSizes { //curr
        var dialogHeight: CGFloat = 726.66667
        var titleFont: Font = .body.weight(.semibold)
        var bodyFont: Font = .subheadline.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 367.666667
        var buttonHeight: CGFloat = 90
        var buttonWidth: CGFloat = 330.0
        var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 32.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromBottom: CGFloat = 70     // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 35     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 30
        var rightTitlePadding: CGFloat = 0
        //.padding(.trailing, sizes.rightTitlePadding)
        var buttonsHorizontal: Bool = false
        var buttonDialogHeight: CGFloat = 230 //false
        
        
    }
    
    struct sizeA2H: NotificationSizes { //curr
        var dialogHeight: CGFloat = 367.666667
        var titleFont: Font = .body.weight(.semibold)
        var bodyFont: Font = .subheadline.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 367.666667
        var buttonHeight: CGFloat = 82
        var buttonWidth: CGFloat = 333.0
        var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 32.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromBottom: CGFloat = 15    // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 36
        var rightTitlePadding: CGFloat = 0
        //.padding(.trailing, sizes.rightTitlePadding)
        var buttonsHorizontal: Bool = false
        var buttonDialogHeight: CGFloat = 367.666667/2
        
    }

struct sizeA3: NotificationSizes { //curr
    var dialogHeight: CGFloat = 727.6667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 110
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 0 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 0     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 45     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 30
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, sizes.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 260
    
}

struct sizeA3H: NotificationSizes { //curr
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 82
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 15    // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 23
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, sizes.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 367.666667/2
    
}


struct sizeA4: NotificationSizes { //curr
    var dialogHeight: CGFloat = 727.6667
    var titleFont: Font = .body.weight(.semibold) //fix font a little do 4h
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 130
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 5 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 45     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 5     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 30
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, sizes.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 300
    
}

struct sizeA4H: NotificationSizes { //curr
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 140
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 0     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 23
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, sizes.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 190.0
    
}

struct sizeA5: NotificationSizes { //curr
    var dialogHeight: CGFloat = 727.6667
    var titleFont: Font = .largeTitle.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 147
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 45    // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 23
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, sizes.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 330.0
    
}

struct sizeA5H: NotificationSizes { //curr
    var dialogHeight: CGFloat = 367.666667
    var titleFont: Font = .title.weight(.bold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 367.666667
    var buttonHeight: CGFloat = 140
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 32.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromBottom: CGFloat = 5   // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 35
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, sizes.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 185.0
    
}
    
    
    




