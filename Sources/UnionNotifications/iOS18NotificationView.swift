//  iOS18NotificationView.swift
//  union-notifications
//
//  Created by Ben Sage on 9/23/25.
//  Last Update Rafi Kigner 9/29/25

import SwiftUI
import UnionButtons


struct iOS18NotificationView: View {
    // MARK: properties
    let appName: String
    let onAllow: () -> Void
    
    @Environment(\.dynamicTypeSize) private var dynamicTypeSize
    @Environment(\.horizontalSizeClass) private var horizontalSizeClass
    
    // MARK: computed Properties
    private var shouldStackButtons: Bool {
        dynamicTypeSize > .xxLarge
    }
    
    private var shouldEnableScroll: Bool {
        dynamicTypeSize >= .accessibility2
    }
    
    private var buttonHeight: CGFloat {
        NotificationDialogConstants.buttonHeight(for: dynamicTypeSize)
    }
    
    // MARK: Layout Calculations
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
        return min(calculatedWidth, NotificationDialogConstants.maxDialogWidth)
    }

    // MARK: Body
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                NotificationDialogContent(
                    appName: appName,
                    shouldEnableScroll: shouldEnableScroll,
                    maxContentHeight: NotificationDialogConstants.maxScrollHeight
                )
                buttonSection
            }
            .background(.regularMaterial)
            .frame(width: dialogWidth(proxy: geometry))
            .clipShape(.rect(cornerRadius: 16, style: .continuous))
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
    
    private var buttonSection: some View {
        VStack(spacing: 0) {
            Divider()
            
            if shouldStackButtons {
                verticalButtons
            } else {
                horizontalButtons
            }
        }
    }
    
    private var verticalButtons: some View {
        VStack(spacing: 0) {
            disabledButton
            Divider()
            activeButton
        }
    }
    
    private var horizontalButtons: some View {
        HStack(spacing: 0) {
            disabledButton
            Divider()
            activeButton
        }
        .frame(height: buttonHeight)
    }
    
    private var disabledButton: some View {
        Button(action: { }) {
            Text("Don't Allow", bundle: .module)
                .font(.body.weight(.semibold))
                .foregroundStyle(Color.blue.opacity(0.3))
        }
        .frame(maxWidth: .infinity, minHeight: buttonHeight)  
        .contentShape(.rect)
        .buttonStyle(.plain)
    }
    
    private var activeButton: some View {
        NotificationDialogButton(
            title: "Allow",
            action: onAllow
        ).frame(minHeight: buttonHeight)
    }
}

#Preview {
    iOS18NotificationView(appName: "TestApp") {
        print("Allow tapped")
    }
}
