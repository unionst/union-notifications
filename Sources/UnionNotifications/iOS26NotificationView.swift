//
//  iOS26NotificationsView.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25
//

import SwiftUI

 //https://developer.apple.com/design/human-interface-guidelines/typography

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
        case .accessibility1 where isLandscape:
            return sizeA1H()
        case .accessibility1:
            return sizeA1()
        case .accessibility2 where isLandscape:
            return sizeA2H()
        case .accessibility2:
            return sizeA2()
        case .accessibility3 where isLandscape:
            return sizeA3H()
        case .accessibility3:
            return sizeA3()
        case .accessibility4 where isLandscape:
            return sizeA4H()
        case .accessibility4:
            return sizeA4()
        case .accessibility5 where isLandscape:
            return sizeA5H()
        case .accessibility5:
            return sizeA5()

        default:
            return sizeXS()
        }
    }
    
    
    private var localizedTitle: String {
        String(format: String(localized: "“%@“ Would Like to Send You Notifications", bundle: .module), appName)
    }
    
    private var textHeight: CGFloat {
        sizes.dialogHeight - sizes.buttonDialogHeight
    }
    

    var body: some View {
        VStack(spacing: 0) {
            if ((dynamicTypeSize >= .xxxLarge && isLandscape) || (dynamicTypeSize >= .accessibility3 && !isLandscape )){
                ScrollView(.vertical, showsIndicators: true) {
                    textContent
                        .frame(width: sizes.dialogWidth )
                        .clipped()
                }
            }else{
                textContent
                    .frame(width: sizes.dialogWidth)
                    .clipped()
            }
            if dynamicTypeSize <= .accessibility1 {
                Rectangle()
                    .fill(Color.clear)
                    .frame(height: 0)
            } else {
                Divider()
            }
            
            if sizes.buttonsHorizontal {
                HStack(spacing: 8) {
                    disabledButton
                    enabledButton
                }
                .padding(.top, 0)
                .padding(.bottom, sizes.textToButtonSpacing)
                .frame(width: sizes.dialogWidth)
            } else {
                ScrollView(.vertical, showsIndicators: true) {
                    VStack(spacing: 8) {
                        disabledButton
                        enabledButton
                    }
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    .frame(width: sizes.dialogWidth)
                }
                .frame(width: sizes.dialogWidth, height: sizes.buttonDialogHeight)
                 .compositingGroup()
                 .clipped()
                 .onAppear {
                     UIScrollView.appearance().bounces = false
                 }
            }
            
        }
        .frame(width: sizes.dialogWidth, height: sizes.dialogHeight)
        .clipped()
        .glassEffect(.regular, in: .rect(cornerRadius: sizes.cornerRadius))
        .transition(.scale.combined(with: .opacity))
      
    }
    
    private var textContent: some View {
        VStack(spacing: 0) {
            Spacer()
                .frame(height:sizes.titleDistanceFromTop )
            
            Text(localizedTitle)
                .font(sizes.titleFont)
                .foregroundColor(.primary)
                .lineSpacing(sizes.titleLeading)
                .padding(.horizontal, sizes.horizontalTextPadding)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
                .frame(height: sizes.titleToBodySpacing)
            
            Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.")
                .font(sizes.bodyFont)
                .foregroundColor(.secondary)
                .lineSpacing(sizes.bodyLeading)
                .padding(.horizontal, sizes.horizontalTextPadding)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Spacer()
                .frame(height: sizes.textToButtonSpacing)
        }
        
    }
    
    private var disabledButton: some View {
        Button {
            onDontAllow?()
        } label: {
            Text("Don't Allow")
                .font(sizes.buttonFont)
                .foregroundStyle(.primary.opacity(0.25))
                .frame(width: sizes.buttonWidth, height: sizes.buttonHeight)
                .background(
                    RoundedRectangle(cornerRadius: sizes.cornerRadius)
                        .fill(.gray.opacity(0.05))
                )
            
        }
        .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: sizes.cornerRadius))
        .buttonStyle(.plain)
    }

    private var enabledButton: some View {
        Button {
            onAllow()
        } label: {
            Text("Allow")
                .font(sizes.buttonFont)
                .foregroundStyle(.primary)
                .frame(width: sizes.buttonWidth, height: sizes.buttonHeight)
                .background(
                    RoundedRectangle(cornerRadius: sizes.cornerRadius)
                        .fill(.gray.opacity(0.15))
                )
        }
        .background(.thinMaterial, in: RoundedRectangle(cornerRadius: sizes.cornerRadius))
        .buttonStyle(.plain)
    }
}


#Preview {
    if #available(iOS 26, *) {
        iOS26NotificationView(
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
