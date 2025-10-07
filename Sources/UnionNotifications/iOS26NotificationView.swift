//  iOS26NotificationView.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25.
//  Last update Rafi Kigner 10/05/25
//
//

import SwiftUI

@available(iOS 26, *)
struct iOS26NotificationView: View {
    let appName: String
    let onAllow: () -> Void
    let onDontAllow: (() -> Void)?
    
    init(appName: String, onAllow: @escaping () -> Void, onDontAllow: (() -> Void)? = nil) {
        self.appName = appName
        self.onAllow = onAllow
        self.onDontAllow = onDontAllow
    }
    
    // Portrait base dimensions
    private let baseScreenWidth: CGFloat = 1206.0
    private let baseScreenHeight: CGFloat = 2622.0
    
    // Landscape base dimensions
    private let baseLandscapeWidth: CGFloat = 2622.0
    private let baseLandscapeHeight: CGFloat = 1206.0
    
    @Namespace private var glassNamespace
    
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    private var isLandscape: Bool {
        UIDevice.current.orientation.isLandscape ||
        UIScreen.main.bounds.width > UIScreen.main.bounds.height
    }
    
    private var shouldStackButtons: Bool {
        if isLandscape {
            return false // Horizontal mode never stacks buttons
        }
        return dynamicTypeSize >= .xxxLarge
    }
    
    private var shouldAddVerticalButtonDivider: Bool {
        dynamicTypeSize >= .accessibility3
    }
    
    private var dialogWidth: CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        return screenWidth * dialogWidthRatio
    }
    
    private var dialogHeight: CGFloat {
        let screenHeight = UIScreen.main.bounds.height
        return screenHeight * dialogHeightRatio
    }
    
    private var buttonHeight: CGFloat {
        let screenHeight = UIScreen.main.bounds.height
        return screenHeight * buttonHeightRatio
    }
    
    private var buttonWidth: CGFloat {
        let screenWidth = UIScreen.main.bounds.width
        return screenWidth * buttonWidthRatio
    }
    
    private var dialogWidthRatio: CGFloat {
        if isLandscape {
            // Landscape ratios
            switch dynamicTypeSize {
            case ...(.large): return (990.0 / 3.0) / (baseLandscapeWidth / 3.0)
            case .xLarge: return (960.0 / 3.0) / (baseLandscapeWidth / 3.0)
            case .xxLarge: return (960.0 / 3.0) / (baseLandscapeWidth / 3.0)
            case .xxxLarge: return (1000.0 / 3.0) / (baseLandscapeWidth / 3.0)
            case .accessibility1, .accessibility2, .accessibility3, .accessibility4, .accessibility5:
                return (1100.0  / 3.0) / (baseLandscapeWidth / 3.0)
            default: return (990.0 - 48 / 3.0) / (baseLandscapeWidth / 3.0)
            }
        } else {
            // Portrait ratios
            switch dynamicTypeSize {
            case ...(.xxxLarge): return (960.0 / 3.0) / (baseScreenWidth / 3.0)
            case .accessibility1, .accessibility2, .accessibility3, .accessibility4, .accessibility5:
                return (1100.0 / 3.0) / (baseScreenWidth / 3.0)
            default: return (960.0 / 3.0) / (baseScreenWidth / 3.0)
            }
        }
    }

    private var dialogHeightRatio: CGFloat {
        if isLandscape {
            // Landscape ratios
            switch dynamicTypeSize {
            case ...(.large): return (660.0 / 3.0) / (baseLandscapeHeight / 3.0)
            case .xLarge: return (810.0 - 48 / 3.0) / (baseLandscapeHeight / 3.0)
            case .xxLarge: return (960.0 / 3.0) / (baseLandscapeHeight / 3.0)
            case .xxxLarge: return (960.0 / 3.0) / (baseLandscapeHeight / 3.0)
            case .accessibility1, .accessibility2, .accessibility3, .accessibility4, .accessibility5:
                return (1100.0 / 3.0) / (baseLandscapeHeight / 3.0)
            default: return (660.0 / 3.0) / (baseLandscapeHeight / 3.0)
            }
        } else {
            // Portrait ratios
            switch dynamicTypeSize {
            case ...(.large): return (670.0 / 3.0) / (baseScreenHeight / 3.0)
            case .xLarge: return (810.0 / 3.0) / (baseScreenHeight / 3.0)
            case .xxLarge: return (960.0 / 3.0) / (baseScreenHeight / 3.0)
            case .xxxLarge: return (1220.0 / 3.0) / (baseScreenHeight / 3.0)
            case .accessibility1: return (1560.0 / 3.0) / (baseScreenHeight / 3.0)
            case .accessibility2: return (1990.0 / 3.0) / (baseScreenHeight / 3.0)
            case .accessibility3, .accessibility4, .accessibility5:
                return (2175.0 / 3.0) / (baseScreenHeight / 3.0)
            default: return (670.0 / 3.0) / (baseScreenHeight / 3.0)
            }
        }
    }

    
    private var buttonWidthRatio: CGFloat {
        if isLandscape {
            // Landscape ratios - buttons are always horizontal
            switch dynamicTypeSize {
            case ...(.xxLarge): return (420.0 / 3.0) / (baseLandscapeWidth / 3.0)
            case .xxxLarge: return (860.0 / 3.0) / (baseLandscapeWidth / 3.0)
            case .accessibility1, .accessibility2, .accessibility3, .accessibility4, .accessibility5:
                return (1000.0 / 3.0) / (baseLandscapeWidth / 3.0)
            default: return (420.0 / 3.0) / (baseLandscapeWidth / 3.0)
            }
        } else {
            // Portrait ratios
            switch dynamicTypeSize {
            case ...(.xxLarge): return (420.0 / 3.0) / (baseScreenWidth / 3.0)
            case .xxxLarge: return (860.0 / 3.0) / (baseScreenWidth / 3.0)
            case .accessibility1, .accessibility2, .accessibility3, .accessibility4, .accessibility5:
                return (1000.0 / 3.0) / (baseScreenWidth / 3.0)
            default: return (420.0 / 3.0) / (baseScreenWidth / 3.0)
            }
        }
    }
    
    private var buttonHeightRatio: CGFloat {
        if isLandscape {
            // Landscape ratios
            switch dynamicTypeSize {
            case ...(.xxLarge): return (145.0 / 3.0) / (baseLandscapeHeight / 3.0)
            case .xxxLarge: return (144.0 / 3.0) / (baseLandscapeHeight / 3.0)
            case .accessibility1: return (200.0 / 3.0) / (baseLandscapeHeight / 3.0)
            case .accessibility2: return (250.0 / 3.0) / (baseLandscapeHeight / 3.0)
            case .accessibility3: return (300.0 / 3.0) / (baseLandscapeHeight / 3.0)
            case .accessibility4: return (350.0 / 3.0) / (baseLandscapeHeight / 3.0)
            case .accessibility5: return (400.0 / 3.0) / (baseLandscapeHeight / 3.0)
            default: return (145.0 / 3.0) / (baseLandscapeHeight / 3.0)
            }
        } else {
            // Portrait ratios
            switch dynamicTypeSize {
            case ...(.xxLarge): return (103.0 / 3.0) / (baseScreenHeight / 3.0)
            case .xxxLarge: return (103.0 / 3.0) / (baseScreenHeight / 3.0)
            case .accessibility1: return (262.0 / 3.0) / (baseScreenHeight / 3.0)
            case .accessibility2: return (202.0 / 3.0) / (baseScreenHeight / 3.0)
            case .accessibility3: return (258.0 / 3.0) / (baseScreenHeight / 3.0)
            case .accessibility4: return (302.0 / 3.0) / (baseScreenHeight / 3.0)
            case .accessibility5: return (358.0 / 3.0) / (baseScreenHeight / 3.0)
            default: return (103.0 / 3.0) / (baseScreenHeight / 3.0)
            }
        }
    }
    
    private var buttonGap: CGFloat {
        if isLandscape {
            let screenWidth = UIScreen.main.bounds.width
            return screenWidth * (24.0 / baseLandscapeWidth)
        } else {
            return 8
        }
    }
    
    private var shouldShowScrollable: Bool {
        if isLandscape {
            return dynamicTypeSize >= .xxxLarge
        }
        return false
    }
    
    private var shouldShowDivider: Bool {
        if isLandscape {
            return dynamicTypeSize >= .xxxLarge
        }
        return false
    }

    private var localizedTitle: String {
     String(format: String(localized: "“%@“ Would Like to Send You Notifications", bundle: .module), appName)
     }
    
    var body: some View {
        if isLandscape {
            landscapeBody
        } else {
            portraitBody
        }
    }
    
    private var portraitBody: some View {
        GlassEffectContainer(spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                ScrollView {
                    VStack(alignment: .leading, spacing: 0) {
                        Text(LocalizedStringKey(localizedTitle))
                            .font(.title3.weight(.semibold))
                            .foregroundStyle(.primary)
                            //.lineSpacing(scaledLineSpacing)
                            .padding(.top, 20)
                        
                        //Spacer(minLength: scaledBetweenText)
                        
                        Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
                            .font(.body.weight(.regular))
                            .foregroundStyle(.secondary)
                         //   .lineSpacing(scaledLineSpacing)
                    }
                }
                .padding(.horizontal, 30)
                
                buttonSection
                    .padding(.bottom, 23)
                    .padding(.horizontal, 16)
            }
        }
        .frame(width: dialogWidth, height: dialogHeight)
        .glassEffect(in: .rect(cornerRadius: 32))
        .glassEffect(in: .rect(cornerRadius: 32))
    }
    
    private var landscapeBody: some View {
        GlassEffectContainer(spacing: 0) {
            HStack(spacing: 0) {

                if shouldShowScrollable {
                    ScrollView {
                        textContent
                    }
                    .frame(maxWidth: .infinity)
                } else {
                    textContent
                        .frame(maxWidth: .infinity)
                }
                
                if shouldShowDivider {
                    Divider()
                        .padding(.vertical, 16)
                }
                
                landscapeButtonSection
            }
        }
        .frame(width: dialogWidth, height: dialogHeight)
        .glassEffect(in: .rect(cornerRadius: 32))
        .glassEffect(in: .rect(cornerRadius: 32))
    }
    
    private var textContent: some View {
        VStack(alignment: .leading, spacing: 0) {
            Text(LocalizedStringKey(localizedTitle))
                .font(.title3.weight(.semibold))
                .foregroundStyle(.primary)
     //           .lineSpacing(scaledLineSpacing)
                .padding(.top, 20)
            

            
            Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
                .font(.body.weight(.regular))
                .foregroundStyle(.secondary)
   //             .lineSpacing(scaledLineSpacing)
            
            Spacer()
        }
        .padding(.horizontal, 30)
    }
    
    private var landscapeButtonSection: some View {
        Group {
            if shouldShowScrollable {
                ScrollView {
                    VStack(spacing: buttonGap) {
                        disabledButton
                        activeButton
                    }
                    .padding(.horizontal, 16)
                    .padding(.vertical, 16)
                }
            } else {
                VStack(spacing: buttonGap) {
                    disabledButton
                    activeButton
                }
                .padding(.horizontal, 16)
                .padding(.vertical, 16)
            }
        }
    }
    
    private var buttonSection: some View {
        VStack(spacing: 0) {
            if shouldStackButtons {
                verticalButtons
            } else {
                horizontalButtons
            }
        }
    }
    
    private var verticalButtons: some View {
        VStack(spacing: 8) {
            if shouldAddVerticalButtonDivider {
                Divider()
                disabledButton
                    .buttonBorderShape(.roundedRectangle(radius: 36))
                    .padding(.top, 8)
                activeButton
                    .buttonBorderShape(.roundedRectangle(radius: 36))
            } else {
                disabledButton
                activeButton
            }
        }
    }
    
    private var horizontalButtons: some View {
        HStack(spacing: 8) {
            disabledButton
            activeButton
        }
        .frame(height: buttonHeight)
    }
    
    private var disabledButton: some View {
        Button {
            onDontAllow?()
        } label: {
            Text("Don't Allow", bundle: .module)
                .font(.body.weight(.medium))
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity)
                .frame(height: buttonHeight)
        }
        .glassEffect()
        .buttonStyle(.glass)
    }
    
    private var activeButton: some View {
        Button {
            onAllow()
        } label: {
            Text("Allow", bundle: .module)
                .font(.body.weight(.semibold))
                .foregroundStyle(.primary)
                .frame(maxWidth: .infinity)
                .frame(height: buttonHeight)
        }
        .buttonStyle(.glass(.regular))
        .glassEffect(.regular.tint(.black.opacity(0.05)))
    }
}

//#Preview {
//    if #available(iOS 26, *) {
//        iOS26NotificationView(
//            appName: "TestApp",
//            onAllow: {
//                print("Allow button tapped")
//            },
//            onDontAllow: {
//                print("Don't Allow button tapped")
//            }
//        )
//    }
//}


