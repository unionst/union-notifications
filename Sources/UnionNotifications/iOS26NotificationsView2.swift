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
    

    
    private var sizes: any NotificationSizes {
        dynamicTypeSize == .xxLarge ? sizeXXL() : sizeXS()
    }
    
                        
    private var localizedTitle: String {
        String(format: String(localized: "“%@“ Would Like to Send You Notifications", bundle: .module), "NotificationsPM")
    }
    

    
    var body: some View {
        GlassEffectContainer(spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
   
                Spacer() //flex spacer eats remaining space
                
               
                Text(LocalizedStringKey(localizedTitle))
                    .font(sizes.titleFont)
                    .foregroundColor(.primary)

                    .lineSpacing(sizes.titleLeading)
                    .padding(.horizontal, sizes.horizontalTextPadding)
                    .padding(.bottom, sizes.titleToBodyDistance)
                
        
                Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
                    .font(sizes.bodyFont)
                    .foregroundColor(.secondary)
                    .lineSpacing(sizes.bodyLeading)
                    .padding(.horizontal, sizes.horizontalTextPadding)
                    .padding(.bottom, sizes.bodyTextToButtonDistance)
                

                HStack(spacing: sizes.buttonSeparationDistance) {
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

                    Button {
                        onAllow()
                    } label: {
                        Text("Allow", bundle: .module)
                            .font(sizes.buttonFont)
                            .foregroundStyle(.black)
                            .frame(width: sizes.buttonWidth, height: sizes.buttonHeight)
                    }
                    .buttonStyle(.glass(.regular))
                    .glassEffect(.regular.tint(.black.opacity(0.05)))
                }
                .frame(maxWidth: .infinity)
                .padding(.bottom, sizes.buttonDistanceFromBottom)  // Gap to dialog bottom
            }
            .frame(height: sizes.dialogHeight)
        }
        .frame(width: sizes.dialogWidth, height: sizes.dialogHeight)
        //aware this is a "bizzare" solution
        .glassEffect(.regular, in: .rect(cornerRadius: sizes.cornerRadius))
        .glassEffect(.regular, in: .rect(cornerRadius: sizes.cornerRadius))
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

