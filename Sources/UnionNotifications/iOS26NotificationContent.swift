//
//  IOS26NotificationContent.swift
//  union-notifications
//
//  Created by RJ Kigner on 9/30/25.
//


import SwiftUI

@available(iOS 26, *)
struct iOS26NotificationContent: View {
    
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
        VStack(alignment: .leading, spacing: 7) {
            Text(LocalizedStringKey(localizedTitle))
                .font(.body.weight(.semibold))
                .foregroundColor(.primary)
                .lineLimit(nil)
                .lineSpacing(1.6)
                .fixedSize(horizontal: false, vertical: true)

            Text("Notifications may include alerts, sounds, and icon badges. These can be configured in Settings.", bundle: .module)
                .font(.subheadline.weight(.regular))
                .foregroundColor(.secondary)
                .lineLimit(nil)
                .lineSpacing(2.0)
                .fixedSize(horizontal: false, vertical: true)
        }
        .padding(.horizontal, 30)
        .padding(.top, 22)
        .padding(.bottom, 20)
    }
}
