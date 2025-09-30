//  iOS26NotificationView.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25.
//  Last update Rafi Kigner 9/30/25
//
//


import SwiftUI

@available(iOS 26, *)
struct iOS26NotificationView: View {

    let appName: String
    let onAllow: () -> Void
    
    @Namespace private var glassNamespace
    
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    

    private var shouldStackButtons: Bool {
        dynamicTypeSize > .xxLarge
    }
    
    private var shouldEnableScroll: Bool {
        dynamicTypeSize >= .accessibility2
    }
    
    private var buttonHeight: CGFloat {
        NotificationDialogConstants.buttonHeight(for: dynamicTypeSize)
    }
    
    private func dialogWidth(proxy: GeometryProxy) -> CGFloat {
        let screenWidth = proxy.size.width
        let screenHeight = proxy.size.height
        
        let isLandscape = screenWidth > screenHeight
        let isIPad = horizontalSizeClass == .regular &&
                     screenWidth > NotificationDialogConstants.iPadWidthThreshold
        
        let percentage: CGFloat
        if isIPad {
            percentage = NotificationDialogConstants.WidthPercentage.forIPad(dynamicTypeSize)
        } else if isLandscape {
            percentage = NotificationDialogConstants.WidthPercentage.forLandscape(dynamicTypeSize)
        } else {
            percentage = NotificationDialogConstants.WidthPercentage.forPortrait(dynamicTypeSize)
        }
        
        let calculatedWidth = screenWidth * percentage
        
        if(dynamicTypeSize < .accessibility3){
            return min(calculatedWidth, NotificationDialogConstants.maxDialogWidth)
        }else{
            return max(calculatedWidth, NotificationDialogConstants.maxDialogWidth * 0.75)
        }
    }

    var body: some View {
        GeometryReader { geometry in
            GlassEffectContainer(spacing: 0) {
                VStack(spacing: 0) {
                    iOS26NotificationContent(
                        appName: appName,
                        shouldEnableScroll: shouldEnableScroll,
                        maxContentHeight: NotificationDialogConstants.maxScrollHeight
                    )
                    
                    buttonSection
                }
            }
            .frame(width: dialogWidth(proxy: geometry))
            .glassEffect(.regular, in: .rect(cornerRadius: 32))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    private var buttonSection: some View {
        Group {
            if shouldStackButtons {
                verticalButtons
            } else {
                horizontalButtons
            }
        }
        .padding(.horizontal, 16)
        .padding(.bottom, 16)
    }
    
    private var verticalButtons: some View {
        VStack(spacing: 8) {
            disabledButton
            activeButton
        }
    }
    
    private var horizontalButtons: some View {
        HStack(spacing: 8) {
            disabledButton
            activeButton
        }
    }
    
    @Environment(\.colorScheme) private var colorScheme
    
    private var disabledButton: some View {
        Button(action: { }) {
            Text("Don't Allow", bundle: .module)
                .font(.body.weight(.medium))
                .foregroundStyle(.secondary)
                .frame(maxWidth: .infinity, minHeight: buttonHeight)
        }
        .background(.gray.opacity(0.15), in: .rect(cornerRadius: 30, style: .continuous))
        .glassEffect(.clear, in: .rect(cornerRadius: 30))
        .disabled(true)
    }
    

    private var activeButton: some View {
        Button(action: onAllow) {
            Text("Allow", bundle: .module)
                .font(.body.weight(.semibold))
                .foregroundStyle(colorScheme == .dark ? .white : .black)
                .frame(maxWidth: .infinity, minHeight: buttonHeight)
        }
        .background(.gray.opacity(0.15), in: .rect(cornerRadius: 30, style: .continuous))
        .glassEffect(.clear, in: .rect(cornerRadius: 30))
    }
}

#Preview {
    if #available(iOS 26, *) {
        iOS26NotificationView(appName: "TestApp") {
            print("Allow tapped")
        }
    }
}
