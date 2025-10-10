//
//  iOS26NotificationsView2.swift
//  union-notifications
//
//  Created by Rafi Kigner on 10/6/25.
//


import SwiftUI

 //https://developer.apple.com/design/human-interface-guidelines/typography


@available(iOS 26, *)
struct iOS26NotificationView2: View {
    let appName: String
    let onAllow: () -> Void
    let onDontAllow: (() -> Void)?
    
    init(appName: String, onAllow: @escaping () -> Void, onDontAllow: (() -> Void)? = nil) {
        self.appName = appName
        self.onAllow = onAllow
        self.onDontAllow = onDontAllow
    }
    
    @Namespace private var glassNamespace
    
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    var isLandscape: Bool {
        verticalSizeClass == .compact
    }
    
    
    private var sizes: any NotificationSizes {
        switch dynamicTypeSize {
        case .xSmall:
            return sizeXS()
        case .small:
            return sizeS()
        case .medium:
            return sizeM()
        case .large:
            return sizeL()
        case .xLarge:
            return sizeXL()
        case .xxLarge:
            return sizeXXL()
        case .xxxLarge where isLandscape:
            return sizeXXXLH()
        case .xxxLarge:
            return sizeXXXL()
        default:
            return sizeXS()
        }
    }
    
    
    private var localizedTitle: String {
        String(format: String(localized: "“%@“ Would Like to Send You Notifications", bundle: .module), "NotificationsPM")
    }
    

    
    
    var body: some View {
        GlassEffectContainer(spacing: 0) {
            ZStack(alignment: .bottom) {
                // Buttons FIRST (behind text)
                buttonSection
                    .zIndex(0)
                
                Text(LocalizedStringKey(localizedTitle))
                    .font(sizes.titleFont)
                    .foregroundColor(.primary)
                    .lineSpacing(sizes.titleLeading)
                    .padding(.horizontal, sizes.horizontalTextPadding)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(y: -sizes.titleDistanceFromBottom)
                    .zIndex(1)
                
                Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
                    .font(sizes.bodyFont)
                    .foregroundColor(.secondary)
                    .lineSpacing(sizes.bodyLeading)
                    .padding(.horizontal, sizes.horizontalTextPadding)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .offset(y: -sizes.bodyTextDistanceFromBottom)
                    .zIndex(1)
                
   
            }
            .frame(height: sizes.dialogHeight)
            .clipped()
        }
        .frame(width: sizes.dialogWidth, height: sizes.dialogHeight)
        .clipped()
        .glassEffect(.regular, in: .rect(cornerRadius: sizes.cornerRadius))
        .glassEffect(.regular, in: .rect(cornerRadius: sizes.cornerRadius))
        .transition(.scale.combined(with: .opacity))
    }
    private var buttonSection: some View {
        VStack(spacing: 0) {
            if sizes.buttonsHorizontal {
                if isLandscape {
                    ZStack(alignment: .bottom) {
                        ScrollView(.vertical, showsIndicators: true) {
                            VStack(spacing: 10) {
                                disabledButton
                                enabledButton
                            }
                            .clipped()
                            .frame(maxWidth: .infinity)
                            .zIndex(0)
                        }
                        .clipped()
                        .frame(height: sizes.buttonHeight * 1.5)
                        // This should stop content
                      
                    }
                    .clipped()
                    .offset(y: sizes.buttonDistanceFromBottom)
                 
                  
                    
                } else {
                    VStack {
                        disabledButton
                        enabledButton
                    }
                    .frame(maxWidth: .infinity)
                    .offset(y: sizes.buttonDistanceFromBottom)
                }
            } else {
                HStack {
                    disabledButton
                    enabledButton
                }
                .frame(maxWidth: .infinity)
                .offset(y: sizes.buttonDistanceFromBottom)
            }
        }
    }
    
    private var disabledButton: some View {
        Button {
            onDontAllow?()
        } label: {
            Text("Don't Allow", bundle: .module)
                .font(sizes.buttonFont)
                .foregroundStyle(.gray.opacity(0.50))
                .frame(width: sizes.buttonWidth, height: sizes.buttonHeight)
        }
        .glassEffect()
        .buttonStyle(.glass)
    }
    
    private var enabledButton: some View {
        Button {
            onAllow()
        } label: {
            Text("Allow", bundle: .module)
                .font(sizes.buttonFont)
                .foregroundStyle(.black)
                .frame(width: sizes.buttonWidth, height: sizes.buttonHeight)
        }
        .glassEffect(.regular, in: .rect(cornerRadius: sizes.cornerRadius))
        .transition(.scale.combined(with: .opacity))
        .buttonStyle(.glass(.regular))
        .glassEffect(.regular.tint(.gray.opacity(0.05)))
        
    }

}





#Preview {
    if #available(iOS 26, *) {
        iOS26NotificationView2(
            appName: "TestApp",
            onAllow: {
                print("Allow button tapped")
            },
            onDontAllow: {
                print("Don't Allow button tapped")
            }
        )
    }
}

