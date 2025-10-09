//  iOS18NotificationView.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25.
//  Last Update Rafi Kigner 9/30/25

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
    
    var isLandscape: Bool {
        verticalSizeClass == .compact
    }
    
    private var confs: any configurations {
        switch dynamicTypeSize {
        case .xSmall:
            return confXS()
        case .small:
            return confS()
        case .medium:
            return confM()
        case .large:
            return confL()
        case .xLarge:
            return confXL()
        case .xxLarge:
            return confXXL()
        case .xxxLarge:
            return confXXXL()
        case .accessibility1 where isLandscape:
            return confA1H()
        case .accessibility1:
            return confA1()
        case .accessibility2 where isLandscape:
            return confA2H()
        case .accessibility2:
            return confA2()
        case .accessibility3 where isLandscape:
            return confA3H()
        case .accessibility3:
            return confA3()
        case .accessibility4 where isLandscape:
            return confA4H()
        case .accessibility4:
            return confA4()
        case .accessibility5 where isLandscape:
            return confA5H()
        case .accessibility5:
            return confA5()
        default:
            return confXS()
        }
    }
    
    private var localizedTitle: String {
        String(format: String(localized: "“%@“ Would Like to Send You Notifications", bundle: .module), "NotificationsPM")
    }


    var body: some View {
        let textH = confs.dialogHeight - confs.buttonDialogHeight
        
        VStack(spacing: 0) {
            
          
            ScrollView(.vertical, showsIndicators: true) {
                VStack(spacing: 4) {
                    Spacer()
                       .frame(height: confs.titleDistanceFromTop)
                    Text(LocalizedStringKey(localizedTitle))
                        .font(confs.titleFont)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.center)
                        .lineSpacing(confs.titleLeading)
                        .fixedSize(horizontal: false, vertical: true)
                    
                    Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
                        .font(confs.bodyFont)
                        .foregroundColor(.primary)
                        .multilineTextAlignment(.center)
                        .lineSpacing(confs.bodyLeading)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .padding(.horizontal, confs.horizontalTextPadding)
            }
            .frame(width: confs.dialogWidth, height: textH)
            .clipped()
      
            Divider()
            
    
            if confs.buttonsHorizontal {
                // Horizontal buttons (no scroll) for smaller sizes
                HStack(spacing: 0) {
                    dontAllowButton
                    Divider()
                    allowButton
                }
                .frame(width: confs.dialogWidth, height: confs.buttonDialogHeight)
            } else {
                // Vertical scrollable buttons for larger accessibility sizes
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing: 0) {
                        dontAllowButton
                        Divider()
                        allowButton
                    }
                    .padding(.vertical, 8)
                }
                .frame(width: confs.dialogWidth, height: confs.buttonDialogHeight)
                .clipped()
            }
        }
        .background {
            Rectangle()
                .fill(.regularMaterial)
        }
        .frame(width: confs.dialogWidth, height: confs.dialogHeight)
        .clipShape(RoundedRectangle(cornerRadius: confs.cornerRadius, style: .continuous))
    }
    
    private var dontAllowButton: some View {
        Button {
            onDontAllow?()
        } label: {
            Text("Don't Allow", bundle: .module)
                .font(confs.buttonFont)
                .foregroundStyle(Color.blue)
                .frame(maxWidth: .infinity, minHeight: confs.buttonHeight)
        }
        .contentShape(.rect)
        .buttonStyle(UnionButtonStyle(nil) { label, isPressed in
            label
                .frame(maxWidth: .infinity, minHeight: confs.buttonHeight)
                .background(
                    Rectangle()
                        .fill(Color.primary.opacity(isPressed ? 0.1 : 0))
                )
        })
    }
    
    private var allowButton: some View {
        Button {
            onAllow()
        } label: {
            Text("Allow", bundle: .module)
                .font(confs.buttonFont)
                .foregroundStyle(Color.blue)
                .frame(maxWidth: .infinity, minHeight: confs.buttonHeight)
        }
        .contentShape(.rect)
        .buttonStyle(UnionButtonStyle(nil) { label, isPressed in
            label
                .frame(maxWidth: .infinity, minHeight: confs.buttonHeight)
                .background(
                    Rectangle()
                        .fill(Color.primary.opacity(isPressed ? 0.1 : 0))
                )
        })
    }
}

#Preview {
if #available(iOS 18, *) {
        iOS18NotificationView(
//            confs: confA1(),
            appName: "TestApp",
            onAllow: {
                print("Allow button tapped")
            },
            onDontAllow: {
                print("Don't Allow button tapped")
        })
    }
}


