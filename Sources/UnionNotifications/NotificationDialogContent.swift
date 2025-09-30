//
//  NotificationDialogContent.swift
//  union-notifications
//
//  Created by RJ Kigner on 9/29/25.
//

import Foundation
import SwiftUI

struct NotificationDialogContent: View {
    let appName: String
    let shouldEnableScroll: Bool
    let maxContentHeight: CGFloat?
    
    private var localizedTitle: String {
        String(format: String(localized: "\"%@\" Would Like to Send You Notifications", bundle: .module), appName) 
    }
    
    var body: some View {
        Group {
            if shouldEnableScroll {
                ScrollView {
                    contentText
                }
                .frame(maxHeight: maxContentHeight)
            } else {
                contentText
            }
        }
    }
    
    private var contentText: some View {
        VStack(spacing: 4) {
            Text(LocalizedStringKey(localizedTitle))
                .font(.body.weight(.semibold))
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .lineSpacing(2)
                .fixedSize(horizontal: false, vertical: true)

            Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
                .font(.footnote.weight(.regular))
                .foregroundColor(.primary)
                .multilineTextAlignment(.center)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.top, 20)
        .padding(.bottom, 8)
        .padding(.horizontal, 16)
    }
}
