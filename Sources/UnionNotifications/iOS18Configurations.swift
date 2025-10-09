//
//  iOS18configurations.swift
//  union-notifications
//
//  Created by RJ Kigner on 10/9/25.
//

//iphone 16 e ios18

import SwiftUI

protocol configurations {
    
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
    var titleDistanceFromTop: CGFloat { get }
    //var bodyTextToButtonDistance: CGFloat { get }
    var bodyTextDistanceFromBottom: CGFloat { get }   // Distance from title BOTTOM to body TOP
    var rightTitlePadding: CGFloat { get }
    var horizontalTextPadding: CGFloat { get }
    var buttonsHorizontal: Bool {get}
    var buttonDialogHeight: CGFloat { get }
}

struct confXS: configurations {
    var dialogHeight: CGFloat = 180.0
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38  // Standard iOS button height
    var buttonWidth: CGFloat = 133.0
    var buttonDistanceFromBottom: CGFloat = 74.0
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var bodyTextDistanceFromBottom: CGFloat = 10
    var horizontalTextPadding: CGFloat = 30
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 52  // Room for 44pt button + 8pt padding (top/bottom)
}


struct confS: configurations {
    var dialogHeight: CGFloat = 180.0
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38  // Standard iOS button height
    var buttonWidth: CGFloat = 133.0
    var buttonDistanceFromBottom: CGFloat = 74.0
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var bodyTextDistanceFromBottom: CGFloat = 10
    var horizontalTextPadding: CGFloat = 30
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 52  // Room for 44pt button + 8pt padding (top/bottom)
}

struct confM: configurations {
    var dialogHeight: CGFloat = 180.0
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38  // Standard iOS button height
    var buttonWidth: CGFloat = 133.0
    var buttonDistanceFromBottom: CGFloat = 74.0
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var bodyTextDistanceFromBottom: CGFloat = 10
    var horizontalTextPadding: CGFloat = 30
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 52  // Room for 44pt button + 8pt padding (top/bottom)
}

struct confL: configurations { //normal
    var dialogHeight: CGFloat = 180.0
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 38  // Standard iOS button height
    var buttonWidth: CGFloat = 133.0
    var buttonDistanceFromBottom: CGFloat = 74.0
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    var titleDistanceFromTop: CGFloat = 15
    var bodyTextDistanceFromBottom: CGFloat = 10
    var horizontalTextPadding: CGFloat = 23
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 52  // Room for 44pt button + 8pt padding (top/bottom)
}

struct confXL: configurations { //CURRENT
    var dialogHeight: CGFloat = 230.0
    //    var titleFont: Font = .system(conf: 17).weight(.semibold) //bizare the font confs line up between xs and S yet dialog height of XS seems to be larger
    //    var bodyFont: Font = .system(conf: 15).weight(.regular)
    //    var buttonFont: Font = .system(conf: 17).weight(.semibold)
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 270.00
    var buttonHeight: CGFloat = 43
    var buttonWidth: CGFloat = 115.0
    var buttonDistanceFromBottom: CGFloat = 74.0 //decrease to move up
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 4
    var bodyLeading: CGFloat = 5
    // var titleToBodyDistance: CGFloat = 12     // Distance from title BOTTOM to body TOP
    var titleDistanceFromTop: CGFloat = 20     // Distance from title BOTTOM to body TOP inccrease to move up
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var bodyTextDistanceFromBottom: CGFloat = -9.0     // Distance from title BOTTOM to body TOP pends if pos or negatiev
    var horizontalTextPadding: CGFloat = 26
    var rightTitlePadding: CGFloat = 0
    var buttonsHorizontal: Bool = true
    var buttonDialogHeight: CGFloat = 44
}

    
    
    
    
    struct confXXL: configurations {
        var dialogHeight: CGFloat = 270.0
        var titleFont: Font = .subheadline.weight(.semibold)
        var bodyFont: Font = .caption.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 270.00
        var buttonHeight: CGFloat = 43
        var buttonWidth: CGFloat = 115.0
        var buttonDistanceFromBottom: CGFloat = 74.0 //decrease to move up
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 18.0
        var titleLeading: CGFloat = 4
        var bodyLeading: CGFloat = 5
        // var titleToBodyDistance: CGFloat = 12     // Distance from title BOTTOM to body TOP
        var titleDistanceFromTop: CGFloat = 15    // Distance from title BOTTOM to body TOP inccrease to move up
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var bodyTextDistanceFromBottom: CGFloat = 0.0     // Distance from title BOTTOM to body TOP pends if pos or negatiev
        var horizontalTextPadding: CGFloat = 20
        var rightTitlePadding: CGFloat = 0
        var buttonsHorizontal: Bool = true
        var buttonDialogHeight: CGFloat = 44
    }
    
    struct confXXXL: configurations {
        var dialogHeight: CGFloat = 342
        var titleFont: Font = .subheadline.weight(.semibold)
        var bodyFont: Font = .caption.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 270
        var buttonHeight: CGFloat = 45
        var buttonWidth: CGFloat = 275.0
        var buttonDistanceFromBottom: CGFloat = 15 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 18.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromTop: CGFloat = 25   // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 20     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat =  16
        var rightTitlePadding: CGFloat = 0
        var buttonsHorizontal: Bool = false //shouldnt this be true
        var buttonDialogHeight: CGFloat = 90
        
    }
    
    
    struct confA1: configurations {
        var dialogHeight: CGFloat = 457.0
        var titleFont: Font = .body.weight(.semibold)
        var bodyFont: Font = .caption.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 327.0
        var buttonHeight: CGFloat = 74
        var buttonWidth: CGFloat = 330.0
        var buttonDistanceFromBottom: CGFloat = 15 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 18.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromTop: CGFloat = 25     // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 50     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 35
        var rightTitlePadding: CGFloat = 0
        var buttonsHorizontal: Bool = false //shouldnt this be true
        var buttonDialogHeight: CGFloat = 155
        
    }
    
    
    
    
    
    struct confA1H: configurations { //curr
        var dialogHeight: CGFloat = 274.0
        var titleFont: Font = .body.weight(.semibold)
        var bodyFont: Font = .caption.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 338.3
        var buttonHeight: CGFloat = 70
        var buttonWidth: CGFloat = 333.0
        var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 18.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromTop: CGFloat = 5    // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 5     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 40
        var rightTitlePadding: CGFloat = 0
        //.padding(.trailing, confs.rightTitlePadding)
        var buttonsHorizontal: Bool = false
        var buttonDialogHeight: CGFloat = 140
    }
    
    
    struct confA2: configurations { //curr
        var dialogHeight: CGFloat = 533
        var titleFont: Font = .body.weight(.semibold)
        var bodyFont: Font = .caption.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 327.666667
        var buttonHeight: CGFloat = 87
        var buttonWidth: CGFloat = 330.0
        var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 18.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromTop: CGFloat = 20     // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 35     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 20
        var rightTitlePadding: CGFloat = 0
        //.padding(.trailing, confs.rightTitlePadding)
        var buttonsHorizontal: Bool = false
        var buttonDialogHeight: CGFloat = 175 //false
        
        
    }
    
    struct confA2H: configurations { //curr
        var dialogHeight: CGFloat = 276.666667 
        var titleFont: Font = .subheadline.weight(.semibold)
        var bodyFont: Font = .caption.weight(.regular)
        var buttonFont: Font = .subheadline.weight(.medium)
        var dialogWidth: CGFloat = 325.666667
        var buttonHeight: CGFloat = 82
        var buttonWidth: CGFloat = 333.0
        var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
        var buttonSeparationDistance: CGFloat = 8.0
        var cornerRadius: CGFloat = 18.0
        var titleLeading: CGFloat = 0
        var bodyLeading: CGFloat = 0
        // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
        //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
        var titleDistanceFromTop: CGFloat = 10    // Distance from title BOTTOM to body TOP
        var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
        var horizontalTextPadding: CGFloat = 30
        var rightTitlePadding: CGFloat = 0
        //.padding(.trailing, confs.rightTitlePadding)
        var buttonsHorizontal: Bool = false
        var buttonDialogHeight: CGFloat = 134
        
    }

struct confA3: configurations { //curr
    var dialogHeight: CGFloat = 720.6667
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 107
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 0 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromTop: CGFloat = 10     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 45     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 40
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, confs.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 216
    
}

struct confA3H: configurations { //curr
    var dialogHeight: CGFloat = 351.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 106
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromTop: CGFloat = 5    // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 23
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, confs.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 175
    
}


struct confA4: configurations { //curr
    var dialogHeight: CGFloat = 720.6667
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 122
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 0 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromTop: CGFloat = 15     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 45     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 22
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, confs.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 244
        
}

struct confA4H: configurations { //curr
    var dialogHeight: CGFloat = 351.666667
    var titleFont: Font = .body.weight(.semibold)
    var bodyFont: Font = .subheadline.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 106
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromTop: CGFloat = 5    // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 20
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, confs.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 175
    
}

struct confA5: configurations { //curr
    var dialogHeight: CGFloat = 720.6667
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 137
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 0 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromTop: CGFloat = 10     // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 45     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 35
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, confs.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 274
    
}

struct confA5H: configurations { //curr
    var dialogHeight: CGFloat = 351.666667
    var titleFont: Font = .subheadline.weight(.semibold)
    var bodyFont: Font = .caption.weight(.regular)
    var buttonFont: Font = .subheadline.weight(.medium)
    var dialogWidth: CGFloat = 327.666667
    var buttonHeight: CGFloat = 137
    var buttonWidth: CGFloat = 333.0
    var buttonDistanceFromBottom: CGFloat = 10 // want it distance from red line to green line - 15
    var buttonSeparationDistance: CGFloat = 8.0
    var cornerRadius: CGFloat = 18.0
    var titleLeading: CGFloat = 0
    var bodyLeading: CGFloat = 0
    // var titleToBodyDistance: CGFloat = 20      // Distance from title BOTTOM to body TOP
    //var bodyTextToButtonDistance: CGFloat = 20 // Distance from body BOTTOM to button TOP
    var titleDistanceFromTop: CGFloat = 5    // Distance from title BOTTOM to body TOP
    var bodyTextDistanceFromBottom: CGFloat = 10     // Distance from title BOTTOM to body TOP
    var horizontalTextPadding: CGFloat = 40
    var rightTitlePadding: CGFloat = 0
    //.padding(.trailing, confs.rightTitlePadding)
    var buttonsHorizontal: Bool = false
    var buttonDialogHeight: CGFloat = 177
    
}
    
    
    




