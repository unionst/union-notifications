//  iOS18NotificationView.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25.
//  Last Update Rafi Kigner 10/10/25

import SwiftUI
import UnionButtons


@available(iOS 18, *)

struct iOS18NotificationView: View {
    let appName: String
    let onAllow: () -> Void
    let onDontAllow: (() -> Void)?
    
    init(appName: String, onAllow: @escaping () -> Void, onDontAllow: (() -> Void)? = nil) {
        self.appName = appName
        self.onAllow = onAllow
        self.onDontAllow = onDontAllow
    }
    
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    @Environment(\.verticalSizeClass) private var verticalSizeClass
    
    private var textHeight: CGFloat {
        configs.dialogHeight - configs.buttonDialogHeight
    }
    
    var isLandscape: Bool {
        verticalSizeClass == .compact
    }
    
    private var configs: any configurations {
        switch dynamicTypeSize {
        case .xSmall:
            return configXS()
        case .small:
            return configS()
        case .medium:
            return configM()
        case .large:
            return configL()
        case .xLarge:
            return configXL()
        case .xxLarge:
            return configXXL()
        case .xxxLarge:
            return configXXXL()
        case .accessibility1 where isLandscape:
            return configA1H()
        case .accessibility1:
            return configA1()
        case .accessibility2 where isLandscape:
            return configA2H()
        case .accessibility2:
            return configA2()
        case .accessibility3 where isLandscape:
            return configA3H()
        case .accessibility3:
            return configA3()
        case .accessibility4 where isLandscape:
            return configA4H()
        case .accessibility4:
            return configA4()
        case .accessibility5 where isLandscape:
            return configA5H()
        case .accessibility5:
            return configA5()
        default:
            return configXS()
        }
    }
    
    private var localizedTitle: String {
        String(format: String(localized: "“%@“ Would Like to Send You Notifications", bundle: .module), "NotificationsPM")
    }


    var body: some View {
        
        VStack(spacing: 0) {
            if ((dynamicTypeSize > .xxxLarge && isLandscape) || (dynamicTypeSize > .accessibility3 && !isLandscape )){
                ScrollView(.vertical, showsIndicators: true) {
                    content
                        .frame(width: configs.dialogWidth)
                        .clipped()
                }
            } else {
                
                content
                    .frame(width: configs.dialogWidth, height: textHeight)
                    .clipped()
            }
            
            Divider()
    
     
            if configs.buttonsHorizontal {
                HStack(spacing: 0) {
                    dontAllowButton
                    Divider()
                    allowButton
                }
                .frame(width: configs.dialogWidth, height: configs.buttonDialogHeight)
            } else if (dynamicTypeSize >  .accessibility3) && isLandscape || (dynamicTypeSize >  .accessibility5 && !isLandscape) {
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing: 0) {
                        dontAllowButton
                        Divider()
                        allowButton
                    }
                    .padding(.vertical, 8)
                }
                .frame(width: configs.dialogWidth, height: configs.buttonDialogHeight)
                .clipped()
            } else {
                VStack(spacing: 0) {
                    dontAllowButton
                        .frame(height: configs.buttonDialogHeight / 2)
                    Divider()
                    allowButton
                        .frame(height: configs.buttonDialogHeight / 2)
                }
                .frame(width: configs.dialogWidth, height: configs.buttonDialogHeight)
            }
        }
        .background {
            Rectangle()
                .fill(.regularMaterial)
        }
        .frame(width: configs.dialogWidth, height: configs.dialogHeight)
        .clipShape(RoundedRectangle(cornerRadius: configs.cornerRadius, style: .continuous))
    }
    
    private var content: some View {

            VStack(spacing: 4) {
                Spacer()
                   .frame(height: configs.titleDistanceFromTop)
                Text(LocalizedStringKey(localizedTitle))
                    .font(configs.titleFont)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(configs.titleLeading)
                    .fixedSize(horizontal: false, vertical: true)
                
                Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
                    .font(configs.bodyFont)
                    .foregroundColor(.primary)
                    .multilineTextAlignment(.center)
                    .lineSpacing(configs.bodyLeading)
                    .fixedSize(horizontal: false, vertical: true)
            }
            .padding(.horizontal, configs.horizontalTextPadding)
    }
    
    
    private var dontAllowButton: some View {
        Button {
            onDontAllow?()
        } label: {
            Text("Don’t Allow", bundle: .module)
                .font(configs.buttonFont)
                .foregroundStyle(Color.blue.opacity(0.3))
                .frame(maxWidth: .infinity, minHeight: configs.buttonHeight)
        }
        .contentShape(.rect)
        .buttonStyle(UnionButtonStyle(nil) { label, isPressed in
            label
                .frame(maxWidth: .infinity, minHeight: configs.buttonHeight)
                .background(
                    RoundedRectangle(cornerRadius: 0, style: .continuous)
                        .fill(Color.primary.opacity(isPressed ? 0.1 : 0))
                )
        })
    }
    

    private var allowButton: some View {
        Button {
            onAllow()
        } label: {
            Text("Allow", bundle: .module)
                .font(configs.buttonFont)
                .foregroundStyle(Color.blue)
                .frame(maxWidth: .infinity, minHeight: configs.buttonHeight)
        }
        .contentShape(.rect)
        .buttonStyle(UnionButtonStyle(nil) { label, isPressed in
            label
                .frame(maxWidth: .infinity, minHeight: configs.buttonHeight)
                .background(
                    RoundedRectangle(cornerRadius: 0, style: .continuous)
                        .fill(Color.primary.opacity(isPressed ? 0.1 : 0))
                )
        })
    }
}

#Preview {
if #available(iOS 18, *) {
        iOS18NotificationView(
            appName: "TestApp",
            onAllow: {
                print("Allow button tapped")
            },
            onDontAllow: {
                print("Don't Allow button tapped")
        })
    }
}


